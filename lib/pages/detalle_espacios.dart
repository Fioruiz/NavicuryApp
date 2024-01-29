import 'package:flutter/material.dart';

class DetalleEspacios extends StatefulWidget {
  @override
  State<DetalleEspacios> createState() => _DetalleEspaciosState();
}

class _DetalleEspaciosState extends State<DetalleEspacios> {
   double sliderLuzValue = 0;
   double sliderAguaValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Detalle Espacios"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              "AJUSTAR",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Luz",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Slider(
              value: sliderLuzValue,
              min: 0,
              max: 2.5,
              activeColor: Colors.blueAccent,
              inactiveColor: Colors.grey,
              thumbColor: Colors.blueAccent,
              onChanged: (alturaimg) {
                sliderLuzValue = alturaimg;
                setState(() {});
              },
            ),
             SizedBox(height: 30,),
            Text(
              "Agua",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Slider(
              value: sliderAguaValue,
              min: 0,
              max: 2.5,
              activeColor: Colors.blueAccent,
              inactiveColor: Colors.grey,
              thumbColor: Colors.blueAccent,
              onChanged: (alturaimg) {
                sliderAguaValue = alturaimg;
                setState(() {});
              },
            ),
          ]),
        ),
      ),
    );
  }
}

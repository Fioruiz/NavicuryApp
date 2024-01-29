import 'package:flutter/material.dart';
import 'package:navicuryapp/models/devices_model.dart';

class DetalleDevices extends StatefulWidget {
  const DetalleDevices({required this.devices});
  final DeviceModel devices;

  @override
  State<DetalleDevices> createState() => _DetalleDevicesState();
}

class _DetalleDevicesState extends State<DetalleDevices> {
  cambiarEstado() {
    if(widget.devices.encendido){
      widget.devices.encendido==false;
    }else{
      widget.devices.encendido==true;
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Detalle Devices"),
          backgroundColor: Colors.blue,
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Container(
              padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Fabricante: ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            widget.devices.fabricante,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Modelo: ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Text(
                            widget.devices.modelo,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Mac: ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            widget.devices.mac,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                // Background color
                              ),
                              onPressed: () {
                                cambiarEstado();
                                setState(() {
                                  
                                });
                              },
                              child: Text(
                                widget.devices.encendido ? "APAGAR" : "ENCENDER",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

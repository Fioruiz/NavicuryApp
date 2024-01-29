import 'package:flutter/material.dart';
import 'package:navicuryapp/models/devices_model.dart';
import 'package:navicuryapp/models/espacio_model.dart';
import 'package:navicuryapp/pages/detalle_devices.dart';
import 'package:navicuryapp/pages/detalle_espacios.dart';
import 'package:navicuryapp/widgets/deviceWidget.dart';

class HomePage extends StatelessWidget {
  final List<Espacio> abc = [
    Espacio(sNamnombre: "A"),
    Espacio(sNamnombre: "B"),
    Espacio(sNamnombre: "C"),
  ];

  final List<DeviceModel> devices = [
    DeviceModel("Refrigeradora", "assets/images/icons8-refrigerador-64.png",
        "30:40:FC:30:PT:40", "REFRI TPF", true, "Refrigeradora"),
    DeviceModel("Televisión", "assets/images/icons8-television-100.png",
        "30:40:FC:30:PT:40", "TV TPF", false, "Televisión"),
    DeviceModel("Refrigeradora", "assets/images/icons8-puerta-64.png",
        "30:40:FC:30:PT:40", "REFRI TPF", true, "Refrigeradora"),
    DeviceModel("Refrigeradora", "assets/images/icons8-aparcamiento-cubierto-64.png",
        "30:40:FC:30:PT:40", "REFRI TPF", true, "Refrigeradora"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("Navicury"),
             backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "ESPACIOS",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Card(),
                GestureDetector(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> DetalleEspacios()));
                
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: abc.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Center(
                                    child: Text(
                                  abc[index].sNamnombre,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 150,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "EQUIPOS CONECTADOS",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.count(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.0,
                      crossAxisSpacing: 12.0,
                      childAspectRatio: 1,
                      children: devices
                          .map((e) => DeviceWidget(deviceModel: e))
                          .toList()
                          ),
               
              ],
            ),
          )),
    );
  }
}

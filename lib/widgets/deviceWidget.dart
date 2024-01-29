import 'package:flutter/material.dart';
import 'package:navicuryapp/models/devices_model.dart';
import 'package:navicuryapp/pages/detalle_devices.dart';

class DeviceWidget extends StatelessWidget {
  DeviceModel deviceModel;
  DeviceWidget({required this.deviceModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.push(context, MaterialPageRoute(
          builder: (context)=> DetalleDevices(devices: deviceModel,)));
     
      },
      child: Container(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  deviceModel.url,
                  height: 80,
                  width: 80,
                ),
                Text(
                  deviceModel.sNamnombree,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

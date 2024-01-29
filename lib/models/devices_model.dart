

class DeviceModel {
  final String sNamnombree;
  final String url;
  final String mac;
  final String modelo;
  final String fabricante;
  final bool encendido;
  
  

   /*
    late String sNamnombree;
  late String url;
  late String mac;
  late String modelo;
  late String fabricante;
  late bool encendido;
   
   
   DeviceModel(
     String sNamnombree,
     String url,
     String mac,
     String modelo,
     bool encendido,
     String fabricante

  ){
    this.sNamnombree = sNamnombree;
    this.url =url;
    this.mac=mac;
    this.modelo = modelo;
    this.encendido=encendido;
    this.fabricante = fabricante;
  }*/

 const DeviceModel(
     this.sNamnombree,
     this.url,
     this.mac,
     this.modelo,
     this.encendido,
     this.fabricante

  );

}
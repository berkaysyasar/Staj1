import 'package:flutter/material.dart';
import 'package:staj_ingilizce_egitimi/sayfalar/seviyeler/A1_Seviye.dart';

class SeviyeSayfasi extends StatelessWidget {
  const SeviyeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seviye Seçiniz"),centerTitle:true,),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          GestureDetector(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text("A1 Beginner - Başlangıç Seviye",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,)),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(settings: RouteSettings(name: "Ders1"),builder: (context)=> A1_Seviye()));
            },
          ),
          GestureDetector(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text("A2 Elementary - Orta Altı Seviye",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,)),
            ),
            onTap: (){
              print("hebele");
            },
          ),
          GestureDetector(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text("B1 Pre-Intermediate - Orta Seviye",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,)),
            ),
            onTap: (){
              print("hebele");
            },
          ),
          GestureDetector(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text("B2 Intermediate - Orta Üstü Seviye",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,)),
            ),
            onTap: (){
              print("hebele");
            },
          ),
          GestureDetector(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text("C1 Upper-Intermediate - İleri Seviye",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,)),
            ),
            onTap: (){
              print("hebele");
            },
          ),
          GestureDetector(
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text("C2 Advanced - Profesyonel Seviye",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,)),
            ),
            onTap: (){
              print("hebele");
            },
          ),
        ],
      ),
    );
  }
}

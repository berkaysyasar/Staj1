import 'package:flutter/material.dart';
import 'package:staj_ingilizce_egitimi/sayfalar/seviyeler/A1_Dersler.dart';

class A1_Seviye extends StatelessWidget {
  const A1_Seviye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A1 Beginner - Başlangıç Seviye"),centerTitle: true,),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),

        children: [
          GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("Ders 1",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                    Text("Selam!",style: TextStyle(fontSize: 16,color: Colors.white))
                  ],
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>A1_Ders1()));
            },
          ),GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("Ders 2",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                    Text("Benim adım Berkay",style: TextStyle(fontSize: 16,color: Colors.white))
                  ],
                ),
              ),
            ),
            onTap: (){

            },
          ),GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("Ders 3",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                    Text("Nasıl gidiyor?",style: TextStyle(fontSize: 16,color: Colors.white))
                  ],
                ),
              ),
            ),
            onTap: (){

            },
          ),GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("Ders 4",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                    Text("Pratik",style: TextStyle(fontSize: 16,color: Colors.white))
                  ],
                ),
              ),
            ),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}

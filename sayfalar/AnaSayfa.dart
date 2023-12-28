import 'package:flutter/material.dart';
import 'package:staj_ingilizce_egitimi/sayfalar/SeviyeSayfasi.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Beginner to Advanced",
              style: TextStyle(color: Colors.white,fontSize: 30),
            ),
            Text(
              "A1-C2",
              style: TextStyle(color: Colors.white,fontSize: 30),
            ),
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/hi.png"),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Text("Her gün 10 dakika ayır ve İngilizce öğren",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 18,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SeviyeSayfasi()));
                      },
                      child: Text("Öğrenmeye Başla",style: TextStyle(fontSize: 18,)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

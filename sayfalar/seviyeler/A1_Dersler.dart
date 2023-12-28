import 'package:flutter/material.dart';
import 'package:staj_ingilizce_egitimi/sayfalar/seviyeler/A1_Seviye.dart';

class A1_Ders1 extends StatefulWidget {
  const A1_Ders1({Key? key}) : super(key: key);

  @override
  State<A1_Ders1> createState() => _A1_Ders1State();
}

class _A1_Ders1State extends State<A1_Ders1> {

  int secili_index = 0;
  MaterialAccentColor bolum1button1 = Colors.amberAccent;
  MaterialAccentColor bolum1button2 = Colors.amberAccent;
  MaterialAccentColor bolum2button1 = Colors.amberAccent;
  MaterialAccentColor bolum2button2 = Colors.amberAccent;
  MaterialAccentColor bolum3button1 = Colors.amberAccent;
  MaterialAccentColor bolum3button2 = Colors.amberAccent;
  static int a1_dogru=0;
  bool bolum1quizzdisable=false;
  bool bolum1quizzvisible=false;
  bool bolum2quizzvisible=false;
  bool bolum2quizzdisable=false;
  bool bolum3quizzvisible=false;
  bool bolum3quizzdisable=false;

  @override
  Widget build(BuildContext context) {
    var bolumler = [bolum1(), bolum1_quizz(), bolum2(), bolum2_quizz(), bolum3(), bolum3_quizz(),a1_sonuc()];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ders 1"),
        ),
        body:bolumler[secili_index]
    );
  }

  Widget bolum1() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Kelimeyi Oku",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.blue,
            child: SizedBox(
                child: Center(
                    child: Text(
                      "Hello!",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    )),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 75),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.orange,
            child: SizedBox(
                child: Center(
                    child: Text(
                      "Merhaba!",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    )),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 75),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    setState(() {
                      secili_index = 1;
                    });
                  },
                  child: Text(
                    "Devam Et",
                    style: TextStyle(fontSize: 22),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget bolum1_quizz() {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Cümleyi Tamamla",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
              child: SizedBox(
                  child: Center(
                      child: Text(
                        "_____!",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      )),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 75),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 55,
                  child: ElevatedButton(
                      onPressed: bolum1quizzdisable ? null : () {
                        setState(() {
                          a1_dogru++;
                          bolum1button1 = Colors.greenAccent;
                          bolum1quizzdisable=true;
                          bolum1quizzvisible=true;
                        });
                      },
                      child: Text(
                        "Hello",
                        style: TextStyle(fontSize: 28),
                      ),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: bolum1button1,disabledBackgroundColor: bolum1button1))),
              SizedBox(
                  height: 55,
                  child: ElevatedButton(

                      onPressed: bolum1quizzdisable ? null : () {
                        setState(() {
                          bolum1button1=Colors.greenAccent;
                          bolum1button2=Colors.redAccent;
                          bolum1quizzdisable=true;
                          bolum1quizzvisible=true;
                        });
                      },
                      child: Text(
                        "Halo",
                        style: TextStyle(fontSize: 28),
                      ),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: bolum1button2,disabledBackgroundColor: bolum1button2,))),
            ],
          ),
          Expanded(child: SizedBox()),
          Visibility(
            visible: bolum1quizzvisible,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      setState(() {
                        secili_index = 2;
                      });
                    },
                    child: Text(
                      "Devam Et",
                      style: TextStyle(fontSize: 22),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bolum2(){
    return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(
            "Kelimeyi Oku",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blue,
          child: SizedBox(
              child: Center(
                  child: Text(
                    "Hi!",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  )),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 75),
        ),
        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.orange,
          child: SizedBox(
              child: Center(
                  child: Text(
                    "Merhaba!",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  )),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 75),
        ),
        Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {
                  setState(() {
                    secili_index = 3;
                  });
                },
                child: Text(
                  "Devam Et",
                  style: TextStyle(fontSize: 22),
                )),
          ),
        )
      ],
    ),
    );
  }

  Widget bolum2_quizz() {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Boşluğu Tamamla",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
              child: SizedBox(
                  child: Center(
                      child: SizedBox(
                        width: 150,
                        child: Text(
                          "A: Hello! B: _____!",
                          maxLines: 2,
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      )),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 100),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 55,
                  child: ElevatedButton(
                      onPressed: bolum2quizzdisable ? null : () {
                        setState(() {
                          bolum2button2 = Colors.greenAccent;
                          bolum2button1 = Colors.redAccent;
                          bolum2quizzdisable=true;
                          bolum2quizzvisible=true;
                        });
                      },
                      child: Text(
                        "Hai",
                        style: TextStyle(fontSize: 28),
                      ),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: bolum2button1,disabledBackgroundColor: bolum2button1))),
              SizedBox(
                  height: 55,
                  child: ElevatedButton(

                      onPressed: bolum2quizzdisable ? null : () {
                        setState(() {
                          a1_dogru++;
                          bolum2button2=Colors.greenAccent;
                          bolum2quizzdisable=true;
                          bolum2quizzvisible=true;
                        });
                      },
                      child: Text(
                        "Hi",
                        style: TextStyle(fontSize: 28),
                      ),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: bolum2button2,disabledBackgroundColor: bolum2button2,))),
            ],
          ),
          Expanded(child: SizedBox()),
          Visibility(
            visible: bolum2quizzvisible,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      setState(() {
                        secili_index = 4;
                      });
                    },
                    child: Text(
                      "Devam Et",
                      style: TextStyle(fontSize: 22),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bolum3() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Sırada yeni bir ifade",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.blue,
            child: SizedBox(
                child: Center(
                    child: Text(
                      "Nice to meet you.",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    )),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 75),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.orange,
            child: SizedBox(
                child: Center(
                    child: Text(
                      "Tanıştığıma memnun oldum.",textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    )),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 75),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    setState(() {
                      secili_index = 5;
                    });
                  },
                  child: Text(
                    "Devam Et",
                    style: TextStyle(fontSize: 22),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget bolum3_quizz() {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Cümleyi Tamamla",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
              child: SizedBox(
                  child: Center(
                      child: Text(
                        "_____ to ____ you.",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      )),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 75),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 55,
                  child: ElevatedButton(
                      onPressed: bolum3quizzdisable ? null : () {
                        setState(() {
                          a1_dogru++;
                          bolum3button1 = Colors.greenAccent;
                          bolum3quizzdisable=true;
                          bolum3quizzvisible=true;
                        });
                      },
                      child: Text(
                        "Nice / meet",
                        style: TextStyle(fontSize: 28),
                      ),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: bolum3button1,disabledBackgroundColor: bolum3button1))),
              SizedBox(
                  height: 55,
                  child: ElevatedButton(

                      onPressed: bolum3quizzdisable ? null : () {
                        setState(() {
                          bolum3button1=Colors.greenAccent;
                          bolum3button2=Colors.redAccent;
                          bolum3quizzdisable=true;
                          bolum3quizzvisible=true;
                        });
                      },
                      child: Text(
                        "Hello / meet",
                        style: TextStyle(fontSize: 28),
                      ),
                      style:
                      ElevatedButton.styleFrom(backgroundColor: bolum3button2,disabledBackgroundColor: bolum3button2,))),
            ],
          ),
          Expanded(child: SizedBox()),
          Visibility(
            visible: bolum3quizzvisible,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      setState(() {
                        secili_index = 6;
                      });
                    },
                    child: Text(
                      "Devam Et",
                      style: TextStyle(fontSize: 22),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget a1_sonuc(){
    String sonuc="";
    if(a1_dogru>=2)
      sonuc=" başarı ile";
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Tebrikler, Ders 1$sonuc tamamlanmıştır", style: TextStyle(color: Colors.blue, fontSize: 20)),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {
                  setState(() {
                    secili_index = 6;
                  });
                },
                child: Text(
                  "Ders 2",
                  style: TextStyle(fontSize: 22),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.popUntil(context, ModalRoute.withName("Ders1"));
                    });
                  },
                  child: Text(
                    "Öğrenmeye devam et",
                    style: TextStyle(fontSize: 22),
                  )),
            ),
          ),
        ],
      )
    );
  }
}

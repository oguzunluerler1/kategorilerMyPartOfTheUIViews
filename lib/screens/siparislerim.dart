import 'package:flutter/material.dart';

class siparislerView extends StatefulWidget {
  const siparislerView({Key? key}) : super(key: key);

  @override
  State<siparislerView> createState() => _siparislerViewState();
}

class _siparislerViewState extends State<siparislerView> {
  bool onTapDegiskeni=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Hepsiburada - Siparişlerim", style: TextStyle(color: Colors.purple)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              print("profil ekranına götürülecek");
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.person, color: Colors.purple),
            ),
          ),
        ],
      ),
      body: bodyMethod(),
    );
  }

  Widget bodyMethod() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {
                    print("sipariş ekranına yönlendir");
                    setState(() {
                      onTapDegiskeni = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(border: Border(
                      bottom: BorderSide(width: onTapDegiskeni == false? 2 :0, color: Colors.black,),
                    )),
                    child: Center(child: Text("Siparişlerim", textAlign: TextAlign.center, style: TextStyle(fontSize: 17, fontWeight: onTapDegiskeni==false? FontWeight.bold :FontWeight.normal),)),
                  ),
                ),
              )
            ),           
            Expanded(
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: GestureDetector(   
                  child: Container(
                    decoration: BoxDecoration(border: Border(
                      bottom: BorderSide(width: onTapDegiskeni == true? 2 :0, color: Colors.black,),
                    )),
                    child: Center(child: Text("Taleplerim", textAlign: TextAlign.center, style: TextStyle(fontSize: 17, fontWeight: onTapDegiskeni==true? FontWeight.bold :FontWeight.normal),)),
                  ),
                  onTap: () {
                    print("taleplerim ekranına yönlendir");
                    setState(() {
                      onTapDegiskeni = true;
                    });
                  },
                ),
              )
            ),  
          ],
        )
      ],
    );
  }
}
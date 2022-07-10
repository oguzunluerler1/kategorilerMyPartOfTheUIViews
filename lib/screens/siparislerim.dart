import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class siparislerView extends StatefulWidget {
  const siparislerView({Key? key}) : super(key: key);

  @override
  State<siparislerView> createState() => _siparislerViewState();
}

class _siparislerViewState extends State<siparislerView> {
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
                child: Container(
                  child: Center(child: Text("Siparişlerim", textAlign: TextAlign.center, style: TextStyle(fontSize: 17),)),
                ),
              )
            ),           
            Expanded(
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Container(
                  child: Center(child: Text("Taleplerim", textAlign: TextAlign.center, style: TextStyle(fontSize: 17),)),
                ),
              )
            ),
          ],
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class kayitliKartView extends StatefulWidget {
  const kayitliKartView({Key? key}) : super(key: key);

  @override
  State<kayitliKartView> createState() => _kayitliKartViewState();
}

class _kayitliKartViewState extends State<kayitliKartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kayıtlı Kartlarım", style: TextStyle(color: Colors.purple),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){print("profil ekranına git");}, icon: Icon(Icons.person, color: Colors.purple,))
        ],
      ),
      body: bodyMethod(),
    );
  }

  Widget bodyMethod() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Kayıtlı Kartlarım (3)", style: TextStyle(color: Colors.red, fontSize: 30),),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: kartIciYazilar(),
                ),
                height: 150,
                width: 200,
              )
            ],
          )
        ],
      ),
    );
  }

  Column kartIciYazilar() {
    return Column(
      children: [
        Container(
          child: Image.asset("assets/kartlogolar/akbank.png",fit: BoxFit.contain,),
          height: 20,
          width: 70,
        ),
        Image.asset("assets/kartlogolar/axess.jpg"),

        
      ],
    );
  }
}
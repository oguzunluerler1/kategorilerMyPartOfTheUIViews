import 'package:flutter/material.dart';

class kategoriView extends StatefulWidget {
  const kategoriView({Key? key}) : super(key: key);

  @override
  State<kategoriView> createState() => _kategoriViewState();
}

class _kategoriViewState extends State<kategoriView> {
  int degisken=0;
  List<String> solkategorilerlistesi = [
    "Sana özel",
    "Popüler",
    "Telefon",
    "Beyaz eşya",
    "Elektrikli ev aleti",
    "Moda",
    "Spor",
    "Anne-bebek",
    "Süpermarket",
    "Petshop",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: bodyMethod(),
      ),
    );
  }

  Widget bodyMethod() {
    return Column(
      children: [
        UstKutu(),
        AltKutu()
      ],
    );
  }

  SizedBox UstKutu() {
    return SizedBox(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(width: 1, color: Colors.black))
          ),
          width: double.infinity, 
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Ürün, kategori veya marka ara",
                  prefixIcon: 
                    Icon(
                      Icons.search,
                    ),
                  suffixIcon: 
                    GestureDetector(
                      onTap: () {print("burada kameraya gidecek");},
                      child: Icon(
                        Icons.camera_alt_outlined,
                      ),
                    ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 0.2)
              ),
            ),
          ),
        ),
        
      );
  }

  Expanded AltKutu() {
    return Expanded(
        child: Container(
          color: Colors.amber,
          child: Row(
            children: [
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),                    
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                      solkolondegiskenarttirilmis(),
                    ],
                  ),
                ),
              )
            ],
          ),
          width: double.infinity,
        ),
      );
  }

  Card solkolondegiskenarttirilmis() {
    degisken++;
    return kategoriCardSolKolon(degisken);
  }

  Card kategoriCardSolKolon(int degisken) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Image.network("https://picsum.photos/id/$degisken/40/40"),
          Text("data")
        ]
      )
    );
  }

}
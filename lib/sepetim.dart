import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400]),
          ),
        ),
        Column(
          children: <Widget>[
            Sepet(
              "Çikolatalı Gofret",
              "2 adet x 3.50 TL",
              "7 TL",
            ),
            Sepet("Cici Bebe", "3 ade x 1 TL", "3 TL",)

          ],
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: <Widget>[
                  Text("Toplam Tutar",
                    style: TextStyle(
                        color: Colors.red[600],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "50 TL",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),

            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Padding(padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[400],
            ),
            child: Center(
              child: Text("Alışverişi Tammala",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        
        )
        

      ],
    );
  }

  ListTile Sepet(String baslik, String adet, String fiyat) {
    return ListTile(
            title: Text(baslik),
            subtitle: Text(adet),
            trailing: Text(fiyat),
          );
  }
}

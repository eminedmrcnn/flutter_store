

import 'package:f_market/urun_detay.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKart("Zeytin Yağı", "23,50 TL", "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361__340.jpg", mevcut: true,),
        urunKart("Süt", "3,50 TL", "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993__340.jpg",),
        urunKart("ET", "43,75 TL", "https://cdn.pixabay.com/photo/2015/11/07/11/00/meat-1030729__340.jpg",),
        urunKart("Yumurta", "10 TL", "https://cdn.pixabay.com/photo/2018/03/11/18/34/brown-eggs-3217675__340.jpg",),
        urunKart("Makarna", "7,25 TL", "https://cdn.pixabay.com/photo/2014/12/15/13/40/penne-569072__340.jpg",mevcut: true,),
        urunKart("Pirinç", "4,50 TL", "https://media.istockphoto.com/photos/japanese-white-rice-picture-id978924630",),
        urunKart("Bulgur", "5TL", "https://media.istockphoto.com/photos/bulgur-raw-wheat-grains-in-wooden-bowl-picture-id627719048",),

      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekListe = [
    urunKart("Çikolata", "5TL", "https://cdn.pixabay.com/photo/2017/04/04/17/06/chocolate-2202143__340.jpg",mevcut: true,),
        urunKart("Dondurma", "5TL", "https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-cone-1274894__340.jpg",),
        urunKart("Macarons", "5TL", "https://cdn.pixabay.com/photo/2017/07/28/14/29/macarons-2548827__340.jpg",),
        urunKart("Jelibon", "5TL", "https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362__340.jpg",mevcut: true,),


      ];
    } else if (widget.kategori == "içecekler") {
      gosterilecekListe = [
        urunKart("Soda", "5TL", "https://cdn.pixabay.com/photo/2016/07/21/11/17/mineral-water-1532300__340.jpg",),
        urunKart("Su", "5TL", "https://cdn.pixabay.com/photo/2017/06/13/16/23/bottle-2399329__340.jpg",mevcut: true,),
        urunKart("Portakal Suyu", "5TL", "https://cdn.pixabay.com/photo/2016/12/20/21/43/orange-juice-1921548__340.jpg",),

      ];
    } else if (widget.kategori == "temizlik") {
      gosterilecekListe = [
        urunKart("Çamaşır Suyu", "5TL", "https://cdn.pixabay.com/photo/2013/03/17/05/04/bottle-94441__340.png",),
        urunKart("Sabun", "5TL", "https://cdn.pixabay.com/photo/2017/05/22/07/39/soap-2333412__340.jpg",),
        urunKart("Sıvı Sabun", "5TL", "https://cdn.pixabay.com/photo/2017/05/23/16/23/soap-dispenser-2337697__340.jpg",mevcut: true,),
        urunKart("Kağıt Havlu", "5TL", "https://cdn.pixabay.com/photo/2020/03/27/17/03/shopping-4974313__340.jpg",),
      ];
    }
  }

  Widget urunKart(String isim, String fiyat, String resimYolu, {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UrunDetay(
          isim: isim,
          fiyat: fiyat,
          resimYolu: resimYolu,
          mevcut: mevcut,
        )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 3.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: resimYolu,
              child: Container(
              width: 120.0,
              height: 80.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(resimYolu),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            ),

            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      childAspectRatio: 1,
      padding: EdgeInsets.all(10.0),
      children: gosterilecekListe,
    );
  }
}

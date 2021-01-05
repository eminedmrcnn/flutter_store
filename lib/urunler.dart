import 'package:f_market/kategori.dart';
import 'package:flutter/material.dart';

class Urunler extends StatefulWidget {
  @override
  _urunlerState createState() => _urunlerState();
}

class _urunlerState extends State<Urunler> with SingleTickerProviderStateMixin {

  TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: televizyonKontrolcusu,
            indicatorColor: Colors.red[400],
            labelColor: Colors.red[400],
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
            tabs: [
              Tab(child: Text("Temel Gıda"),),
              Tab(child: Text("Şekerleme"),),
              Tab(child: Text("İçecekler"),),
              Tab(child: Text("Temizlik"),)
            ]
        ),
        Expanded(
          child: TabBarView(
            controller: televizyonKontrolcusu,
              children: [
                Kategori(kategori: "Temel Gıda",),
                Kategori(kategori: "şekerleme",),
                Kategori(kategori: "içecekler",),
                Kategori(kategori: "temizlik",)
              ]
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'models/burc_model.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;

  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,

            backgroundColor: Colors.indigo,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + 'Özellikleri'),
              centerTitle: true,

              background: Image.asset('images/' + secilenBurc.burcBuyukResim, fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(9),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        secilenBurc.burcAdi,
                        style: TextStyle(color: Colors.red, fontSize: 21,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      secilenBurc.burcDetayi,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(secilenBurc.burcTarihi),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

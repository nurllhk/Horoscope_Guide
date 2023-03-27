import 'package:burc/burc_item.dart';
import 'package:burc/data/strings.dart';
import 'package:flutter/material.dart';
import 'models/burc_model.dart';

class Burclistesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  Burclistesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ZODYA')),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (contex, index) {

            return BurcItem(ListelenenBurc: tumBurclar[index]);


          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  static List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      // küçük resim değerini almak için

      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk${i + 1}.png';

      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}

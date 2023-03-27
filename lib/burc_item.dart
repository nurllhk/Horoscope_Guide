import 'package:burc/burc_detay.dart';
import 'package:flutter/material.dart';
import 'package:burc/models/burc_model.dart';
class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme; // temanın rengini direkt olarak bu değişkenle kullanabilirsin
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return BurcDetay(secilenBurc: ListelenenBurc);
            }));
          },
          leading: Image.asset("images/"+ListelenenBurc.burcKucukResim,),
          title:  Text(ListelenenBurc.burcAdi,
            style: TextStyle(
              fontSize: 17
            ),


          ),
          subtitle: Text(ListelenenBurc.burcTarihi),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wtech_app/mixin.dart';


class UcuncuSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("Kazanımlar"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.8),
                child: Text(
                  'Büyülü Yazılım dünyasına Etkili Flutter Geliştiricisi olarak başlamak ister misin?'


                  'Wtech Akademinin 27 Eylül 2021’de Başlayacak Geleceğin Mesleklerinden Etkili Flutter Geliştiricisi Eğitimiyle sizi gelişime ve Kariyer  Sahibi Olmaya Davet Ediyoruz! '
                      'Eğer üniversitelerin 4 yıllık Bilgisayar Mühendisliği, Elektrik-Elektronik Mühendisliği, Makine Mühendisliği, İnşaat Mühendisliği, Fen Bilimleri, Matematik veya Fizik bölümlerinden mezunsanız, biraz da olsa İngilizce biliyorsanız ve Flutter Yazılımı öğrenmek istiyorsanız Google Developers ile gerçekleştirdiğimiz " Etkili Flutter Geliştiricisi " eğitimine katılın ve mezun olunca sektörün önde gelen firmalarında yer almaya aday olun.',


                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],

          ),
        ),
      );
}



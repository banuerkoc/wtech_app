import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wtech_app/mixin.dart';
import 'package:wtech_app/ikincisayfa.dart';
import 'package:wtech_app/ucuncusayfa.dart';
import 'package:wtech_app/videoSayfasi.dart';
import 'package:url_launcher/url_launcher.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wtech Akademi',
      theme: ThemeData(
        // uygulamada kullanacağımız stillleri ayrı bir dart dosyasında hazırlayıp tema datası olarak burada yer veriyoruz.

        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Gordita",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: HomeScreen(
      ),


    );
  }
}

class HomeScreen extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 40, right: 20),
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        "assets/images/logo.svg",
                        width: 150,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    /*
                    SizedBox(
                      height: 20,
                    ),

                     */
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/1.png",
                            width: 230,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 50,
                            left: 250,
                            child: Text(
                              "Etkili Flutter \nGeliştirici \nKursu",
                              style: kHeadingTextStyle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("assets/images/curiosity.png"),
                          flex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: ListTile(
                                title: Text("Material Design"),
                                subtitle: Text("Birinci Bölüm"),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    child: const Text('Ders Önizlemesi'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VideoPlayerApp()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  ElevatedButton(
                                    child: const Text('Kazanımlar'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UcuncuSayfa()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("assets/images/innovative.png"),
                          flex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: ListTile(
                                title: Text("Material Design"),
                                subtitle: Text("Birinci Bölüm"),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    child: const Text('Ders Önizlemesi'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VideoPlayerApp()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  ElevatedButton(
                                    child: const Text('Kazanımlar'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UcuncuSayfa()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("assets/images/work.png"),
                          flex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: ListTile(
                                title: Text("Material Design"),
                                subtitle: Text("Birinci Bölüm"),
                              ),
                            ),
                            Expanded(
                              flex: 5,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,

                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    child: const Text('Ders Ön İzlemesi'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VideoPlayerApp()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  ElevatedButton(
                                    child: const Text('Kazanımlar'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UcuncuSayfa()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Center(
          child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.facebook.com/wtechturkey/?ref=wtech");
                    },
                    child: Image.asset("assets/images/facebook.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.instagram.com/wtechturkey/");
                    },
                    child: Image.asset("assets/images/instagram.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://twitter.com/wtechturkey");
                    },
                    child: Image.asset("assets/images/twitter.png", width: 23,height: 23,)
                ),
              ],
          ),
            ),

          ],
        ),

      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;


  }



  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => IkinciSayfa()),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => UcuncuSayfa()),
      );
  }
}

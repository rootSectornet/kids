import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids/model/menu_model.dart';
import 'package:kids/util/music_util.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  DateTime currentBackPressTime;

  @override
  void initState() {
    // TODO: implement initState

    MusicUtil.playMusic();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    MusicUtil.stopMusic();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: onWillPop,
        child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(0),
              height: MediaQuery.of(context).size.height,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/images/kids.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 100,),
                  Center(child: Text("Aplikasi Pembelajaran Anak Anak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                  Expanded(
                    flex: 0,
                    child: GridView.count(
                          crossAxisCount: 2,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(20.0),
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          physics: ClampingScrollPhysics(),
                          children: <Widget>[
                            InkWell(
                              onTap:()=>Navigator.pushNamed(context, '/second_menu',arguments: 1),
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.symmetric(horizontal: 11.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned.fill(
                                        child: Image.asset("assets/images/huruf.jpg",fit: BoxFit.cover,),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.5),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  "Belajar Huruf",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:()=>Navigator.pushNamed(context, '/second_menu',arguments: 2),
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.symmetric(horizontal: 11.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned.fill(
                                        child: Image.asset("assets/images/number.jpg",fit: BoxFit.cover,),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.5),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  "Belajar Angka",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:()=>Navigator.pushNamed(context, '/second_menu',arguments: 3),
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.symmetric(horizontal: 11.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned.fill(
                                        child: Image.asset("assets/images/hewandepan.png",fit: BoxFit.cover,),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.5),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  "Nama Nama Hewan",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap:()=>Navigator.pushNamed(context, '/second_menu',arguments:4),
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.symmetric(horizontal: 11.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned.fill(
                                        child: Image.asset("assets/images/warna.png",fit: BoxFit.cover,),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.5),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  "Macam Macam Warna",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),

                  )
                ],
              ),
            ),
          ),
      ),
    );
  }


  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: "Tap dua kali untuk keluar");
      return Future.value(false);
    }else{
      MusicUtil.stopMusic();
      return Future.value(true);

    }
  }
}

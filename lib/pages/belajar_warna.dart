import 'package:flutter/material.dart';
import 'package:kids/model/belajar_number_model.dart';
import 'package:kids/model/belajar_warna_model.dart';
import 'package:kids/presenter/belajar_number_presenter.dart';
import 'package:kids/presenter/belajar_warna_presenter.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/belajar_number_view.dart';
import 'package:kids/view/belajar_warna_view.dart';
import 'package:swipe_stack/swipe_stack.dart';

class BelajarWarna extends StatefulWidget {
  @override
  _Belajar_warnaState createState() => _Belajar_warnaState();
}

class _Belajar_warnaState extends State<BelajarWarna> with TickerProviderStateMixin implements Belajar_warna_view{

  Belajar_warna_model _belajar_warna_model;
  BelajarWarnaPresenter _belajarWarnaPresenter;
  _Belajar_warnaState(){
    this._belajarWarnaPresenter = new BelajarWarnaPresenter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: this._belajarWarnaPresenter.onWillpop,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/kids.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      color: Colors.black.withOpacity(0.5)
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 100,),
                      Center(child: Text("Pembelajaran Macam Macam Warna",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      Container(
                        height: MediaQuery.of(context).size.height/1.6,
                        child: SwipeStack(
                          children: this._belajar_warna_model.Listwarna.map((Warna warna) {
                            return SwiperItem(
                                builder: (SwiperPosition position, double progress) {
                                  return Material(
                                      elevation: 4,
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(6)),
                                          image: new DecorationImage(
                                            image: new AssetImage("${warna.images}"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                  );
                                }
                            );
                          }).toList(),
                          key: this._belajar_warna_model.swipeKey,
                          visibleCount: 3,
                          stackFrom: StackFrom.Top,
                          translationInterval: 6,
                          scaleInterval: 0.03,
                          historyCount: 4,
                          onEnd: () {setState(() {
                            this._belajar_warna_model.swipeKey.currentState.reassemble();
                          });},
                          onSwipe: (int index, SwiperPosition position) => this._belajar_warna_model.warna = this._belajar_warna_model.Listwarna[index],
                          onRewind: (int index, SwiperPosition position) => debugPrint("onRewind $index $position"),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            heroTag: "Back",
                            backgroundColor: Colors.green,
                            child: Icon(Icons.arrow_back,size: 50,),
                            elevation: 8,
                            onPressed: () => this._belajarWarnaPresenter.BackTapped(),
                          ),
                          SizedBox(width: 10,),
                          FloatingActionButton(
                            heroTag: "Play",
                            backgroundColor: Colors.black,
                            child: Icon(Icons.play_arrow,size: 50,),
                            elevation: 8,
                            onPressed: () => this._belajarWarnaPresenter.Play(),
                          ),
                          SizedBox(width: 10,),
                          FloatingActionButton(
                            heroTag: "Next",
                            backgroundColor: Colors.orange,
                            child: Icon(Icons.arrow_forward,size: 50,),
                            elevation: 9.0,
                            onPressed: () => this._belajarWarnaPresenter.Next(),
                          ),
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void refreshData(Belajar_warna_model belajar_warna_model) {
    // TODO: implement refreshData
    setState(() {
      this._belajar_warna_model = belajar_warna_model;
    });

  }

  @override
  void initState() {
    // TODO: implement initState\

    MusicUtil.pauseMusic();
    this._belajarWarnaPresenter.view = this;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

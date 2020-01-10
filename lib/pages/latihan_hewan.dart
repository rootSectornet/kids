import 'package:flutter/material.dart';
import 'package:kids/model/latihan_warna_model.dart';
import 'package:kids/presenter/latihan_hewan_presenter.dart';
import 'package:kids/presenter/latihan_warna_presenter.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/latihan_warna_view.dart';

class LatihanHewan extends StatefulWidget {
  @override
  _LatihanHewanState createState() => _LatihanHewanState();
}

class _LatihanHewanState extends State<LatihanHewan>  with TickerProviderStateMixin implements LatihanWarnaView{

  LatihanWarnaModel _latihanWarnaModel;
  LatihanHewanPresenter _latihanHewanPresenter;
  _LatihanHewanState(){
    this._latihanHewanPresenter = new LatihanHewanPresenter();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: this._latihanHewanPresenter.onWillpop,
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
            child:this._latihanWarnaModel.isDone ?
            Center(child: Selesai(context),)
                :
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Center(child:Image.asset(this._latihanWarnaModel.soal.img,fit: BoxFit.fill,),),
                SizedBox(height: 20,),
                SizedBox(height: 20,),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.only(top: 0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemCount: this._latihanWarnaModel.soal.choice.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (ctx,i){
                      return Container(
                        height: 13,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        child:InkWell(
                            onTap: (){this._latihanHewanPresenter.Jawab(this._latihanWarnaModel.soal,this._latihanWarnaModel.soal.choice[i]);},
                            child: Image.asset(this._latihanWarnaModel.soal.choice[i].image,fit: BoxFit.contain,)
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: !this._latihanWarnaModel.isDone,
        child: FloatingActionButton(
          onPressed: ()=>this._latihanHewanPresenter.Play(),
          child: Icon(Icons.play_arrow,color: Colors.white,size: 50),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }

  @override
  void refreshData(LatihanWarnaModel latihanWarnaModel) {
    // TODO: implement refreshData
    setState(() {
      this._latihanWarnaModel = latihanWarnaModel;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    MusicUtil.stopMusic();
    this._latihanHewanPresenter.view = this;
    this._latihanHewanPresenter.Play();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose'
    MusicUtil.playMusic();
    super.dispose();
  }

  @override
  void gantiSoal() {
    // TODO: implement gantiSoal
    setState(() {
      this._latihanHewanPresenter.getRandomSoal();
    });
  }

  Widget Selesai(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Skor = ${this._latihanWarnaModel.skor}",style: TextStyle(
            fontSize: 36,
            color: Colors.blue,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Benar = ${this._latihanWarnaModel.benar}",style: TextStyle(
                fontSize: 24,
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(width: 40,),
            Text("Salah = ${this._latihanWarnaModel.salah}",style: TextStyle(
                fontSize: 24,
                color: Colors.red,
                fontWeight: FontWeight.bold
            ),)
          ],
        )
      ],
    );
  }

  @override
  void SelesaiSoal() {
    // TODO: implement SelesaiSoal
    setState(() {
      this._latihanHewanPresenter.Selesai();
    });
  }

}

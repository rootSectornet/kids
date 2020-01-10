import 'package:flutter/material.dart';
import 'package:kids/model/latihan_angka_model.dart';
import 'package:kids/presenter/latihan_angka_presenter.dart';
import 'package:kids/presenter/latihan_huruf_presenter.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/latihan_angka_view.dart';

class LatihanHuruf extends StatefulWidget {
  @override
  _LatihanHurufState createState() => _LatihanHurufState();
}

class _LatihanHurufState extends State<LatihanHuruf>  with TickerProviderStateMixin implements LatihanAngkaView{

  LatihanAngkaModel _latihanAngkaModel;
  LatihanHurufPresenter _latihanHurufPresenter;
  _LatihanHurufState(){
    this._latihanHurufPresenter = new LatihanHurufPresenter();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: this._latihanHurufPresenter.onWillpop,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(0),
            height: MediaQuery.of(context).size.height,
            decoration: new BoxDecoration(
              color: Colors.white
            ),
            width: MediaQuery.of(context).size.width,
            child:this._latihanAngkaModel.isDone ?
            Center(child: Selesai(context),)
                :
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Center(child:Image.asset(this._latihanAngkaModel.soal.img,fit: BoxFit.fill,),),
                      Align(
                        alignment: Alignment.centerRight,
                        child:Container(
                            transform: Matrix4.translationValues(-10.0, -20.0, 10.0),
                            child: Image.asset(this._latihanAngkaModel.soal.soal,fit: BoxFit.fill,)
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purpleAccent,
                    padding: EdgeInsets.only(top: 15),
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,
                      ),
                      itemCount: this._latihanAngkaModel.soal.choice.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (ctx,i){
                        return Container(
                          height: 13,
                          margin: const EdgeInsets.symmetric(horizontal: 11.0),
                          child:InkWell(
                              onTap: (){this._latihanHurufPresenter.Jawab(this._latihanAngkaModel.soal,this._latihanAngkaModel.soal.choice[i]);},
                              child: Image.asset(this._latihanAngkaModel.soal.choice[i].image,fit: BoxFit.contain,)
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: !this._latihanAngkaModel.isDone,
        child: FloatingActionButton(
          onPressed: ()=>this._latihanHurufPresenter.Play(),
          child: Icon(Icons.play_arrow,color: Colors.white,size: 50),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }

  @override
  void refreshData(LatihanAngkaModel latihanAngkaModel) {
    // TODO: implement refreshData
    setState(() {
      this._latihanAngkaModel = latihanAngkaModel;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    MusicUtil.stopMusic();
    this._latihanHurufPresenter.view = this;
    this._latihanHurufPresenter.Play();
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
      this._latihanHurufPresenter.getRandomSoal();
    });
  }

  Widget Selesai(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Skor = ${this._latihanAngkaModel.skor}",style: TextStyle(
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
            Text("Benar = ${this._latihanAngkaModel.benar}",style: TextStyle(
                fontSize: 24,
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(width: 40,),
            Text("Salah = ${this._latihanAngkaModel.salah}",style: TextStyle(
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
      this._latihanHurufPresenter.Selesai();
    });
  }

}

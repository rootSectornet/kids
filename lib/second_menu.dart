import 'package:flutter/material.dart';
import 'package:kids/model/menu_model.dart';
import 'package:kids/model/second_menu_model.dart';


class SecondMenu extends StatefulWidget {
  @override
  _SecondMenuState createState() => _SecondMenuState();
}

class _SecondMenuState extends State<SecondMenu> {
  List<MenuItem> ListSecondMenu;

  @override
  Widget build(BuildContext context) {
    final int IDMENU = ModalRoute.of(context).settings.arguments;
    if(IDMENU == 1){
      ListSecondMenu = SecondMenuHuruf;
    }else if(IDMENU == 2){
      ListSecondMenu = SecondMenuAngka;
    }else if(IDMENU == 3){
      ListSecondMenu = SecondMenuHewan;
    }else{
      ListSecondMenu = SecondMenuWarna;
    }
    return Scaffold(
      body: SingleChildScrollView(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(height: 10,),
              Center(child: Text("Aplikasi Pembelajaran Anak Anak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
              Expanded(
                flex: 0,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: ListSecondMenu.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (ctx,i){
                      return InkWell(
                        onTap: ()=>Navigator.pushNamed(context, ListSecondMenu[i].route),
                        child:  Container(
                          width: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 11.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(ListSecondMenu[i].image,fit: BoxFit.cover,),
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
                                            ListSecondMenu[i].menuName,
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
                      );
                    }
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}

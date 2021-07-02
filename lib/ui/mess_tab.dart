import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/repository/fetch_mess_menu.dart';
class MessTab extends StatefulWidget {
  @override
  _MessTabState createState() => _MessTabState();
}

class _MessTabState extends State<MessTab> {
  Future<List<dynamic>> _messMenu;

  @override
  void initState() {
    super.initState();
    _messMenu=fetchMenu();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData=Theme.of(context);
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.only(bottom: 20.0,right: 20.0,left: 20.0,top: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color:_themeData.scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 30.0,
              spreadRadius: 0,
              offset: Offset(
                0.0,
                20.0,
              ),
            )
          ],),
        child: Container(
          padding: EdgeInsets.only(left:30.0,right: 10.0,top: 20,bottom: 5.0),
          child: FutureBuilder(
              future: _messMenu,
              builder: (context,AsyncSnapshot<List<dynamic>> snapshot){
                if(snapshot.hasData)
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${typeHeader(index)}",style: _themeData.textTheme.headline2,),
                    Divider(color: _themeData.accentColor,thickness: 1.0,endIndent: 30,indent: 00,),
                    Text(formatData(snapshot.data[index]),style:_themeData.textTheme.bodyText2),
                  ],
                );
                else return Container( //Progress Indicator
                    height: 30.0,
                    width: 30.0,
                    child: RefreshProgressIndicator(backgroundColor: _themeData.primaryColor,));
              }),
        ),
      );
    },
    );
  }

  String formatData(dynamic data){
    String items="";
    data['title'].toString().split(' ').forEach((element) {items=items+" ▪  "+element+"\n";});
    return items;
  }
  String typeHeader(int index){
    switch(index){
      case 0: return "Breakfast";
      case 1: return "Lunch";
      case 2: return "Hi-Tea";
      case 3: return "Dinner";
      default: return "Something Wrong";
    }
  }
}

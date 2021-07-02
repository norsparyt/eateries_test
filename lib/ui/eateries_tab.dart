import 'package:food_app/ui/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/eatery.dart';
import 'package:food_app/repository/eateries.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class EateriesTab extends StatefulWidget {
  @override
  _EateriesTabState createState() => _EateriesTabState();
}

class _EateriesTabState extends State<EateriesTab> {
  final List<Eatery> _eateriesList = Eateries().fetchAllEateries();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: themeData.primaryColor,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SearchBar(),
          Column(
            children: [
              // SearchBar(),
              list(context),
              // ListView()
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Widget list(BuildContext context) {
    final themeData = Theme.of(context);
    return Expanded(
      child: Container(
        // color: themeData.primaryColor,
        child: ListView.builder(
            itemCount: _eateriesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.all(20.0),
                  // padding: EdgeInsets.all(20.0),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: LiquidSwipe(
                    waveType: WaveType.circularReveal,
                    enableLoop: false,
                    enableSlideIcon: true,
                    slideIconWidget: Container(margin:EdgeInsets.only(right: 20.0),child:Icon(Icons.arrow_back_ios,color: themeData.backgroundColor,)),
                    positionSlideIcon: 0.0,
                    pages: [
                      Container(
                        decoration: BoxDecoration(
                            color: themeData.scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                // spreadRadius: 0,
                                offset: Offset(
                                  0.0,
                                  3.0,
                                ),
                              ),
                            ]),
                        child: outletDetails(index,themeData)
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: themeData.accentColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                // spreadRadius: 0,
                                offset: Offset(
                                  0.0,
                                  3.0,
                                ),
                              ),
                            ]),
                        child: Center(child: Icon(Icons.call,size:40.0,color: themeData.scaffoldBackgroundColor,)),
                      )
                    ],
                  ));
            }),
      ),
    );
  }
  Widget outletDetails(int index,ThemeData themeData){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        VerticalDivider(
          color: themeData.primaryColor,
          thickness: 3,
          indent: 20.0,
          endIndent: 20.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _eateriesList[index].name,
              style: themeData.textTheme.headline4,
            ),
            Text(_eateriesList[index].speciality,style: themeData.textTheme.bodyText2,),
            Text(_eateriesList[index].timings,style: themeData.textTheme.bodyText1,),
            VerticalDivider(),
          ],
        ),
        Padding(padding: EdgeInsets.all(20.0)),
      ],
    );
  }
}

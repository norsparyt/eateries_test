import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/counter_cubit.dart';
import 'package:food_app/ui/dynamic_fab.dart';
import 'package:food_app/ui/eateries_tab.dart';
import 'package:food_app/ui/mess_tab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  // final List<Tab> myTabs = <Tab>;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: themeData.scaffoldBackgroundColor,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: DynamicFab(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              'FOOD',
              style: themeData.textTheme.headline3,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: RotatedBox(
                  quarterTurns: 1, child: Icon(Icons.bar_chart_sharp)),
              onPressed: () =>
                  BlocProvider.of<CounterCubit>(context).increment(),
            ),
            bottom:PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: Container(
                width: double.maxFinite,
                // height: 200.0,
                child: TabBar(
                  // labelPadding: EdgeInsets.only(left: 0, right: 0),
                  labelStyle: themeData.textTheme.headline1,
                  labelColor: themeData.backgroundColor,
                  unselectedLabelColor: themeData.backgroundColor.withOpacity(0.5),
                  isScrollable: true,
                  indicatorWeight: 4,
                  labelPadding: EdgeInsets.only(left:40.0),
                  indicatorPadding: EdgeInsets.only(left:40.0),
                  controller: _tabController,
                  tabs: [
                    Container(
                      height: 70.0,
                      child: Tab(
                        // text: 'Mess',
                        child: Text('Mess')),),
                    Container(
                      height: 70.0,
                      // width: 200.0,
                      child: Tab(text: 'Eateries'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top:0.0,left: 0,right:0),
            child: TabBarView(
              controller: _tabController,
              children: [
                MessTab(),
                EateriesTab(),
              ],
            ),
          )),
    );
  }
}
// onPressed: ()=>BlocProvider.of<ThemeCubit>(context).setTheme(),

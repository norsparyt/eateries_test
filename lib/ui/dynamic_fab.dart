import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/counter_cubit.dart';
import 'package:food_app/bloc/theme_cubit.dart';

class DynamicFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return BlocBuilder<CounterCubit, int>(
      builder: (BuildContext context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: themeData.primaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              // duration: Duration(seconds: 1),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.home_rounded,color: themeData.backgroundColor,),
                    onPressed: ()=>BlocProvider.of<ThemeCubit>(context).setTheme(),
                  ),
                  state != 0
                      ? Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.shopping_cart,color: themeData.backgroundColor,),
                              onPressed: null,
                            ),
                            (state > 4)? Text(
                                    "(4)  ",style: themeData.textTheme.bodyText2,
                                  )
                                : SizedBox(
                                    width: 0,
                                    height: 0,
                                  )
                          ],
                        )
                      : SizedBox(
                          width: 0,
                          height: 0,
                        )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

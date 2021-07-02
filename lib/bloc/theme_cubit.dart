import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class ThemeCubit extends Cubit<int> {
  //system default is -1
  int activeTheme=0;
  ThemeCubit() : super(0);

  void setTheme() {
    var box =  Hive.box('Prefs');
    activeTheme=(activeTheme==0)?1:0;
    box.put('activeTheme',activeTheme);
    emit(activeTheme);
  }
}

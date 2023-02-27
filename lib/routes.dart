import 'package:app1/screeen/dasboard_screen.dart';
import 'package:app1/screeen/register_screen.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/register': (BuildContext context) => RegisterScreen(),
    '/dash': (BuildContext context) => DashboardScreen()
  };
}

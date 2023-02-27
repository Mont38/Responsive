import 'package:app1/settings/styles.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isDarkThemeEnable = false;

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bueno para las cuentas'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/15/5e/a4/155ea4a6a22db66e8bf1eaba7349ffd8.jpg'),
                ),
                accountName: Text('Natanael Cano'),
                accountEmail: Text('rancho@humilde.com.mx')),
            DayNightSwitcher(
              isDarkModeEnabled: isDarkThemeEnable,
              onStateChanged: ((isDarkModeEnabled) {
                isDarkModeEnabled
                    ? theme.setThemeData(StylesApp.darkTheme(context))
                    : theme.setThemeData(StylesApp.lightTheme(context));
                isDarkThemeEnable = isDarkModeEnabled;
                setState(() {});
              }),
            ),
            ListTile(
              onTap: () {},
              title: Text('practica 1'),
              subtitle: Text('Descripcion de la practica'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.chevron_right),
            )
          ],
        ),
      ),
    );
  }
}

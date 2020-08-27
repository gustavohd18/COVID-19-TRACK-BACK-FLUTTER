import 'package:covid19/pages/country_details.dart';
import 'package:covid19/pages/home.dart';
import 'package:covid19/pages/splash.dart';
import 'package:covid19/service/covid_service.dart';
import 'package:covid19/stores/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CovidService()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router("/", child: (_, args) => SplashPage()),
        Router("/home", child: (_, args) => HomePage()),
        Router("/countries",
            child: (_, args) => CountryDetailsPage(
                  country: args.data,
                )),
      ];

  @override
  Widget get bootstrap => AppWidget();
}

import 'package:covid19/service/covid_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CovidService()),
      ];

  @override
  List<Router> get routers => [Router("/", child: (_, args) => SplashPage())];

  @override
  Widget get bootstrap => AppWidget();
}

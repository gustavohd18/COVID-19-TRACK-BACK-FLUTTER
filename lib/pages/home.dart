import 'package:covid19/stores/home_controller.dart';
import 'package:covid19/widgets/country_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:covid19/widgets/row.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: (this.controller.world != null)
            ? _buildBody()
            : Center(child: CircularProgressIndicator()),
        bottomNavigationBar: _buildBottomBar(),
      );
    });
  }

  Widget _buildBody() {
    return (this.controller.currentIndex == 0)
        ? _buildBodyWorld()
        : _buildCountries();
  }

  Widget _buildBodyWorld() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader("Informações COVID-19 ", ""),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Dados atualizados em ${controller.world.lastUpdated.day}/0${controller.world.lastUpdated.month} às ${controller.world.lastUpdated.hour}:${controller.world.lastUpdated.minute}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Colors.white,
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text("Total de Paises afetados"),
                    subtitle:
                        Text(controller.world.affectedCountries.toString()),
                  ),
                ),
              ],
            ),
          ),
          buildRow(Colors.blue, Icons.info_outline, "Total de Infectados",
              controller.world.cases.toString()),
          const SizedBox(height: 16.0),
          buildRow(Colors.red, Icons.info, "Mortes",
              controller.world.deaths.toString()),
          const SizedBox(height: 16.0),
          buildRow(Colors.green, Icons.info_outline, "Recuperados",
              controller.world.recivered.toString()),
        ],
      ),
    );
  }

  Widget _buildCountries() {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Expanded(
          child: _buildResults(),
        )
      ],
    ));
  }

  Widget _buildResults() {
    return Observer(builder: (_) => CountryList(this.controller.countries));
  }

  Container _buildHeader(String titulo, String url) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 32.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: Colors.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: Text(
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          const SizedBox(height: 5.0),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey.shade800,
      unselectedItemColor: Colors.grey,
      currentIndex: this.controller.currentIndex,
      onTap: this.controller.changePage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          title: Text("Mundo"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text("Paises"),
        ),
      ],
    );
  }
}

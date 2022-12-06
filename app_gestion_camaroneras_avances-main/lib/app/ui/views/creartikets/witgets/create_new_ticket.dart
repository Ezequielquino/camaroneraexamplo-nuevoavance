import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/tab_Uni_central.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/tab_alimentador.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/tab_piscina.dart';
import 'package:flutter/material.dart';

class CreateNewTicket extends StatelessWidget {
  const CreateNewTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                automaticIndicatorColorAdjustment: false,
                labelStyle: const TextStyle(
                  fontSize: 15.0,
                ),
                indicator: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.0)),
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blue,
                tabs: [
                  Container(
                      width: 110.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.blue,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Tab(text: "Piscina")),
                  Container(
                      width: 110.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.blue,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Tab(text: "Unidad central")),
                  Container(
                    width: 110.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Tab(text: "Alimentador"),
                  ),
                ]),
            Container(
              color: Colors.white,
              height: 600.0,
              child: const TabBarView(children: [
                TabPiscina(),
                TabUnidadCentral(),
                TabAlimentador()
              ]),
            ),
          ],
        ),
      ),
      //),
    );
  }
}

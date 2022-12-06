import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/create_new_ticket.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/info_ticket.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/ticket_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrearTiketsView extends StatelessWidget {
  const CrearTiketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CrearTiketsController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 320.0),
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    )))
          ],
        ),
        body: ListView(
          children: const [
            InfoTiket(),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Crear Nuevo Ticket",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30.0),
            CreateNewTicket()
          ],
        ),
      ),
    );
  }
}

import 'package:app_gestion_camaroneras/app/ui/components/inputs/input_text.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/Buttons.dart';
import 'package:app_gestion_camaroneras/app/ui/views/creartikets/witgets/agregar_imagen.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TabUnidadCentral extends StatelessWidget {
  const TabUnidadCentral({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          height: 250.0,
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 20.0),
            const Text("  Nombre de dispositivo",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38)),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  InputText(
                    //controller: controller.textCtrlUser,
                    border: InputBorder.none,
                    keyboardType: TextInputType.text,
                    maxLength: 15,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    fontColor: AppColors.kPrimary,
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
            const Text("  Seleccione Sintoma",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38)),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  InputText(
                    border: InputBorder.none,
                    keyboardType: TextInputType.text,
                    maxLength: 15,
                    filled: true,
                    fontColor: AppColors.kPrimary,
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ]),
        ),
        const CardArchivo(),
        const Buttons()
      ],
    );
  }
}

class CardArchivo extends StatelessWidget {
  const CardArchivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: double.infinity,
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            child: _CardArchivo(
              path: "assets/images/img_ofi.png",
            ),
            onTap: () {
              _datosFoods(context);
            },
          ),
          _CardArchivo(
            path: "assets/images/img_oficina.png",
          ),
          _CardArchivo(
            path: "assets/images/img_laptop.png",
          ),
        ],
      ),
    );
  }

  Widget _CardArchivo({
    required String path,
  }) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(left: 15.0),
      padding: EdgeInsets.all(15.0),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

_datosFoods(BuildContext context) {
  showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          height: 5.0,
          width: 110.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        ),
        SizedBox(height: 10.0),
        AgregarImagen()
      ]);
    },
  );
}

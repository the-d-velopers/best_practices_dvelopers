import 'package:best_practices_dvelopers/app_config/app_theme/app_palette.dart';
import 'package:best_practices_dvelopers/core/ui/autor_widget.dart';
import 'package:best_practices_dvelopers/core/ui/tip_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = '/home';
  static const String name = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.primaryColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text('Tip page example'),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          AutorWidget(
            title: 'Diego Velásquez',
            content: Text('Senior Software Engineer',
                style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w300,
                    color: AppPalette.secondaryColor)),
          ),
          TipWidget(
            title: 'Sección solo de texto',
            content: Column(
              children: [
                Text('Contenido 1'),
                Text('Contenido 2'),
                Text('Contenido 3'),
                Text('Contenido 4'),
                Text('Contenido 5'),
                Text('Contenido 6'),
                Text('Contenido 7'),
                Text('Contenido 8'),
                Text('Contenido 9'),
                Text('Contenido 10'),
              ],
            ),
          ),
          TipWidget(
            title: 'Sección con imagen',
            content: Column(
              children: [
                Text('Contenido 1'),
                Text('Contenido 2'),
                Text('Contenido 3'),
                Text('Contenido 4'),
                Text('Contenido 5'),
                Text('Contenido 6'),
                Text('Contenido 7'),
                Text('Contenido 8'),
                Text('Contenido 9'),
                Text('Contenido 10'),
              ],
            ),
          ),
          TipWidget(
            title: 'Sección con video',
            content: Column(
              children: [
                Text('Contenido 1'),
                Text('Contenido 2'),
                Text('Contenido 3'),
                Text('Contenido 4'),
                Text('Contenido 5'),
                Text('Contenido 6'),
                Text('Contenido 7'),
                Text('Contenido 8'),
                Text('Contenido 9'),
                Text('Contenido 10'),
              ],
            ),
          ),
          TipWidget(
            title: 'Sección con referencias y links',
            content: Column(
              children: [
                Text('Contenido 1'),
                Text('Contenido 2'),
                Text('Contenido 3'),
                Text('Contenido 4'),
                Text('Contenido 5'),
                Text('Contenido 6'),
                Text('Contenido 7'),
                Text('Contenido 8'),
                Text('Contenido 9'),
                Text('Contenido 10'),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

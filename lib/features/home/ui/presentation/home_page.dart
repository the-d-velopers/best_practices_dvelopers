import 'package:best_practices_dvelopers/app_config/app_theme/app_palette.dart';
import 'package:best_practices_dvelopers/core/ui/autor_widget.dart';
import 'package:best_practices_dvelopers/core/ui/tip_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/link_widget.dart';
import '../../../../core/ui/paragraph_widget.dart';

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
        title: const Text('Unnecesary abstraction'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const AutorWidget(
            avatarUrl: 'assets/images/wilsonveloper.jfif',
            title: 'Wilson Toribio',
            content: Text(
              'Mid Software Engineer',
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w300,
                color: AppPalette.secondaryColor,
              ),
            ),
          ),
          const TipWidget(
            title: 'Summary',
            content: Column(
              children: [
                ParagraphWidget(
                  content: 'Sometimes using Clean Architecture might make us think that we have to implement abstarct classes every where so we will end up with a lot of folders and files.',
                ),
                ParagraphWidget(
                  content: 'Do the abstract classes as needed. If you are not sure that a class will need more than one implementation just do a normal class. Then depending on the need to have more than one implementation go and do it.',
                ),
                ParagraphWidget(
                  content: 'The point of this is to make the development of the app simpler and to remove unnecesary folders and files, some projects tend to get a lot of abstract classes that will only have one implementation, and we do not want to overengineering a simple solution or feature.',
                ),
              ],
            ),
          ),
          TipWidget(
            title: 'Images',
            content: Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://miro.medium.com/v2/resize:fit:720/format:webp/1*vUtSx8-gdvIreENjRcvt7w.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://blog.ndepend.com/wp-content/uploads/SOLID-Principle-Dependency-Inversion-Principle.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

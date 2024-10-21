import 'package:best_practices_dvelopers/app_config/app_theme/app_palette.dart';
import 'package:flutter/material.dart';

class AutorWidget extends StatelessWidget {
  final String title;
  final Widget content;
  final String avatarUrl;

  const AutorWidget({super.key, required this.title, required this.content, required this.avatarUrl,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 6,
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                VerifiedAvatar(
                  imagePath: avatarUrl,
                  // imagePath: 'assets/images/diegoveloper.jpeg',
                ),
                const Expanded(
                  flex: 1,
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
        Positioned(
            top: 40,
            right: 0,
            left: 16,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100, // Altura animada
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}

class VerifiedAvatar extends StatelessWidget {
  final String imagePath;

  const VerifiedAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppPalette.primaryColorDark.withOpacity(0.5),
              width: 4,
            ),
          ),
          child: CircleAvatar(
            radius: 36,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_circle,
              size: 24,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}

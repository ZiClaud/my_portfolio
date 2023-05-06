import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/work_page_containers.dart';

class IremiPage extends StatelessWidget {
  const IremiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainWorkPage(
      title: 'Iremi App',
      description1: 'Iremi is a mobile app designed to help users',
      descriptionBold1: 'combat anxiety through guided breathing exercises.',
      description2:
          'Using Flutter and Dart, I have created a simple and intuitive app that offers a variety of breathing exercises tailored to the user\'s needs.\nThe app also includes a progress tracker that allows users to monitor their breathing habits and',
      descriptionBold2: 'track their progress over time.',
      images: [
        WorkPageImage(url: 'https://i.imgur.com/eoEx6Tt.png'),
        WorkPageImage(url: 'https://i.imgur.com/zf0f2OA.png'),
        WorkPageImage(url: 'https://i.imgur.com/rzRn7Us.png'),
        WorkPageImage(url: 'https://i.imgur.com/34SF2m0.png'),
      ],
    );
  }
}
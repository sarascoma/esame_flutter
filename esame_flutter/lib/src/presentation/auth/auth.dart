// ignore_for_file: prefer_const_constructors

import 'package:esame_flutter/src/presentation/auth/widgets/form-setion.dart';
import 'package:esame_flutter/src/presentation/auth/widgets/hero-section.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context,constraints) {
          final isDesktop=constraints.maxWidth>1000;
          print('width: ${constraints.maxWidth}');
          return Flex(
            direction: isDesktop?Axis.horizontal: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeroSection(),
              FormSection(),
            ],
          );
        }
      ),
    );
  }
}
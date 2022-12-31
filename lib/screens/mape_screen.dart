import 'package:flutter/material.dart';
import 'package:mtelapp/components/customAppbar.dart';

class MapeScreen extends StatelessWidget {
  const MapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
            child: CustomAppBar(
          pageTitle: 'Mape',
        )),
      ],
    );
  }
}

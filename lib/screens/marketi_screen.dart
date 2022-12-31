import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mtelapp/components/customAppbar.dart';
import 'package:mtelapp/components/search_bar.dart';
import 'package:mtelapp/main.dart';

class MarketiScreen extends StatelessWidget {
  const MarketiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // custom app bar
          SafeArea(
            child: CustomAppBar(
              pageTitle: 'Marketi',
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // search bar
                SearchBar(hintText: 'Pretražite market'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Marketi',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Pogledaj sve',
                        style: TextStyle(
                          color: Color.fromRGBO(85, 74, 240, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/icons/Voli.png'),
                Image.asset('assets/icons/Franca.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

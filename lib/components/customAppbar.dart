import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget {
  final String pageTitle;
  const CustomAppBar({required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Iconsax.home,
                color: Colors.grey,
              ),
              Icon(
                Icons.chevron_right_outlined,
                color: Colors.grey,
              ),
              Text(
                pageTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_cart,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}

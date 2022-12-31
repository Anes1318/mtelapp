import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBar extends StatefulWidget {
  final String hintText;
  const SearchBar({required this.hintText});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 8,
      child: TextField(
        textInputAction: TextInputAction.newline,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: widget.hintText,
          suffixIcon: Icon(
            Iconsax.search_normal,
          ),
        ),
      ),
    );
  }
}

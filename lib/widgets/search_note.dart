import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchNote extends StatelessWidget {
  const SearchNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: GoogleFonts.poppins(fontSize: 20),
          hintText: 'Search notes here...',
          contentPadding: EdgeInsets.all(12),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
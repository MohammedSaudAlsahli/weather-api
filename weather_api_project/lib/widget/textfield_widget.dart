import 'package:flutter/material.dart';

class SearchTextFild extends StatelessWidget {
  const SearchTextFild({
    super.key,
    this.onChanged,
    this.onSubmitted,
    this.controller,
  });
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        filled: true,
        fillColor: const Color.fromARGB(
          255,
          64,
          64,
          82,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      controller: controller,
      onSubmitted: onSubmitted,
    );
  }
}

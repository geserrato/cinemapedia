import 'package:flutter/material.dart';

class CustomGradient extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const CustomGradient(
      {super.key,
      required this.colors,
      required this.stops,
      required this.begin,
      required this.end});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin,
            end: end,
            stops: stops,
            colors: colors,
          ),
        ),
      ),
    );
  }
}

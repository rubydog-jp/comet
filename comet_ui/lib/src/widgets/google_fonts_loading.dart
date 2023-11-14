import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsLoading extends StatefulWidget {
  const GoogleFontsLoading({
    super.key,
    required this.fontFamily,
    required this.child,
  });

  final String fontFamily;
  final Widget child;

  @override
  State<GoogleFontsLoading> createState() => _GoogleFontsLoadingState();
}

class _GoogleFontsLoadingState extends State<GoogleFontsLoading> {
  /// loag from Google fonts
  Future<TextTheme> loadTextTheme() async {
    final theme = GoogleFonts.getTextTheme(widget.fontFamily);
    await GoogleFonts.pendingFonts([
      GoogleFonts.jetBrainsMono(),
    ]);
    return theme;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadTextTheme(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: snapshot.data,
          ),
          child: widget.child,
        );
      },
    );
  }
}

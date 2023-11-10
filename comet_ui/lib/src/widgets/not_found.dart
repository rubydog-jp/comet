import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:comet/src/logic/initial_location.dart';
import 'package:comet/src/theme.dart';
import 'package:comet/src/types/gen.dart';

class CometNotFoundPage extends StatelessWidget {
  const CometNotFoundPage(
    this.cometData, {
    super.key,
  });

  final CometGenData cometData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CometTheme.colorNavy,
        title: const Text(
          '404 Not Found',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 100,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            const Text(
              'Page Not Found',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final initialLocation = cometInitialLocation(cometData);
                GoRouter.of(context).go(initialLocation);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}

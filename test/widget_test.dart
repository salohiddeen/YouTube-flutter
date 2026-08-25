import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:youtube_clone/features/content/bottom_navigation.dart';

void main() {
  testWidgets('bottom navigation reports the selected destination',
      (WidgetTester tester) async {
    var selectedIndex = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: BottomNavigation(
          onPressed: (index) => selectedIndex = index,
        ),
      ),
    );

    await tester.tap(find.text('Search'));
    await tester.pump();

    expect(selectedIndex, 3);
    expect(find.text('Search'), findsOneWidget);
  });
}

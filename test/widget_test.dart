import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_2/main.dart';

void main() {
  testWidgets('shows the profile card and portrait photo', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('UNIVERSITAS SURYAKENCANA'), findsOneWidget);
    expect(find.text('FAKULTAS TEKNIK'), findsOneWidget);
    expect(find.text('MUHAMMAD\nAZYAN FIRDAUS'), findsOneWidget);
    expect(find.text('TEKNIK INFORMATIKA'), findsOneWidget);
    expect(find.text("IF D '24"), findsOneWidget);
    expect(
      find.bySemanticsLabel('Foto profil di pantai saat senja'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });
}

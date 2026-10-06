import 'package:odoo_inventory/app/app.dart';
import 'package:odoo_inventory/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}

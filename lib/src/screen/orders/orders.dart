  import 'package:beqala/src/application.dart';


class OrdersScreen extends StatelessWidget {
  late OrdersProvider provider;
  
  @override
  Widget build(BuildContext context) {
    provider = context.watch<OrdersProvider>();
    return const Scaffold(
      body: Center(child: Text('hello world, this is Orders screen')),
    );
  }
}
  
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controlle.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('NativePay'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        height: 300,
        width: 130,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.dashboard),
                Text(
                  'Dashboard',
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.shopping_cart),
                Text(
                  'Minhas vendas',
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.inventory),
                Text(
                  'Produtos',
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.compare_arrows),
                Text(
                  'Integrações',
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.attach_money),
                Text(
                  'Financeiro',
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.bar_chart),
                Text(
                  'Relatórios',
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.assignment_return),
                Text(
                  'Reembolsos',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
            value: appController.instance.dartTheme, 
            onChanged: (value) {
              appController.instance.changeTheme();
          },);
  }
}
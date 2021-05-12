import 'package:flutter/material.dart';
import 'package:my_shop/widgets/app_drawer.dart';
import 'package:my_shop/widgets/order_item.dart';
import 'package:my_shop/providers/orders.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {

  static const routeName ="/ordes";
  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orders.orders.length,
        itemBuilder: (context,index)=>OrderItem(orders.orders[index]),
      ),
    );
  }
}

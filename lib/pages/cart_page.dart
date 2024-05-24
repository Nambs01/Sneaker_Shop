import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakertute/components/cart_item.dart';
import 'package:sneakertute/models/cart.dart';

import 'package:sneakertute/models/Shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: cart.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = cart.getUserCart()[index];

                  return CartItem(shoe: individualShoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

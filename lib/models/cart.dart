import 'package:flutter/material.dart';

import 'Shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan 1",
      price: "250",
      description:
          "Full leather uppers and a rubber midsole and outsole add some sturdiness as well as weight",
      imagePath: "assets/images/air-jordan-1.png",
    ),
    Shoe(
      name: "Vans",
      price: "200",
      description:
          "Long known as the leader in action sports footwear, Vans launches an extensive apparel collection for both men and women. ",
      imagePath: "assets/images/vans.png",
    ),
    Shoe(
      name: "Air Max",
      price: "230",
      description:
          "Air Max shoes are identified by their midsoles incorporating flexible urethane pouches filled with pressurized gas.",
      imagePath: "assets/images/airmax.png",
    ),
    Shoe(
      name: "Nike Vaporfly",
      price: "180",
      description:
          "Nike's top running shoes, including the Vaporfly and Alphafly, feature carbon fiber plates embedded within their midsoles.",
      imagePath: "assets/images/nikeshoe.png",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() => shoeShop;

  // get cart
  List<Shoe> getUserCart() => userCart;

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

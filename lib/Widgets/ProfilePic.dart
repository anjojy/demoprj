import 'package:flutter/material.dart';

Container ProfilePic() {
  return Container(
    height: 35,
    width: 35,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-zsO-WB5sqXt2_4XGhgNqeecBwQ2dm2dTFcV4NBR0hBIK9nlKRuIz8HUwEo-eEteJBm4&usqp=CAU"),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        color: Colors.black12),
  );
}

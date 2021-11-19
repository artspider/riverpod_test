import 'package:flutter/material.dart';

class ModelPrice extends StatelessWidget {
   final int modelOldPrice;
   final int modelCurrentPrice;
  const ModelPrice({Key? key, required this.modelOldPrice, required this.modelCurrentPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Column(
        children: [
          Text(
            modelOldPrice.toString(),
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
              letterSpacing: 1.2,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(height: 7,),
          Text(
            modelCurrentPrice.toString(),
            style: const TextStyle(
              fontSize: 22,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w900
            ),
          ),
        ],
      ),
    );
  }
}
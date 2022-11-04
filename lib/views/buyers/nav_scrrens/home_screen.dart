import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'What are you looking for',
                style: TextStyle(
                  fontSize: 19, 
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                child: SvgPicture.asset('assets/icons/cart.svg', width: 20)
              ),
            ],
          ),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Search for products',
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset('assets/icons/search.svg', width: 10,),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:zero_waste_frontend/common/globals.dart';

class Purchase extends StatelessWidget {
  const Purchase({Key key}) : super(key: key);

  Widget _getItem(int number, String name, String price, bool selected) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Row(
            children: [
              Text(
                '$number.',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: selected ? Pallette.primary : Pallette.content),
              ),
              Container(
                width: 8,
              ),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: selected ? Pallette.primary : Pallette.content),
                ),
              ),
              Container(
                width: 8,
              ),
              Text(
                price,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: selected ? Pallette.primary : Pallette.content),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Pallette.strongShadows,
        )
      ],
    );
  }

  Widget _getCategory(String name, bool selected) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Text(
        name,
        style: TextStyle(
          color: selected ? Pallette.primary : Pallette.content,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _getCategoryPicker() {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    'CATEGORIES',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Pallette.primary),
                  ),
                ),
                Container(
                  height: 1,
                  color: Pallette.strongShadows,
                ),
                Container(
                  height: 8,
                ),
                _getCategory('MILK', false),
                _getCategory('OATS', true),
                _getCategory('MEAT', false),
                _getCategory('UTENSILS', false),
                _getCategory('WHEAT', false),
                _getCategory('VEGGIES', false),
                _getCategory('SEA FOOD', false),
              ],
            )),
        Container(
          width: 1,
          color: Pallette.primary,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Container(
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Pallette.primary,
                      ),
                      labelStyle:
                          TextStyle(fontSize: 16, color: Pallette.primary),
                      labelText: 'Search products',
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Pallette.primary),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Pallette.primary),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Pallette.primary),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 32,
              ),
              Expanded(
                child: Scaffold(
                  floatingActionButton: FloatingActionButton(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    onPressed: () => print('TODO'),
                    backgroundColor: Pallette.primary,
                  ),
                  backgroundColor: Colors.white,
                  body: Center(
                    child: Column(
                      children: [
                        _getItem(1, 'Corn flakes', '5.05 €', false),
                        _getItem(2, 'Rolled Oats', '8.33 €', false),
                        _getItem(3, 'Oat Flour', '3.05 €', true),
                        _getItem(4, 'Instant Oats', '10.05 €', false),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    final screenWidth = s.width;
    final screenHeight = s.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.7,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        color: Pallette.primary,
                        child: Center(
                          child: Text(
                            '1.453 KG',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 60),
                          ),
                        ),
                      ),
                      Expanded(child: _getCategoryPicker())
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe_example/example.dart';

import 'large_button.dart';

class ItemSelector extends StatefulWidget {
  final Completer? completer;
  const ItemSelector({Key? key, this.completer}) : super(key: key);

  static Future<DateTime?> selectItem(BuildContext context) async {
    final completer = Completer<DateTime?>();

    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        builder: (context) {
          return ItemSelector(
            completer: completer,
          );
        });

    return completer.future;
  }

  @override
  _ItemSelectorState createState() => _ItemSelectorState();
}

class _ItemSelectorState extends State<ItemSelector> {
  List sampleData = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(child: WithPages()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Spacer(),
                Center(
                    child: LargeButton(
                  text: 'send',
                )),
                SizedBox(height: 30)
              ],
            ),
          ],
        ));
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel item;
  const RadioItem({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('' + item.text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: item.isSelected ? Colors.white : Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 18)),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            width: 28,
            height: 28,
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String text;

  RadioModel(this.isSelected, this.text);
}

import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String itemText;
  final String itemCode;
  final String priceList;

  const ItemCard({
    Key? key,
    required this.itemText,
    required this.itemCode,
    required this.priceList,
  }) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 0) _count--;
    });
  }

  double getTotalAmount() {
    double price = double.tryParse(widget.priceList.replaceAll(RegExp(r'[^0-9.]'), '')) ?? 0.0;
    return price * _count;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/food.png'),
      ),
      title: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itemCode,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.itemText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              QuantityCounter(
                count: _count,
                increment: _increment,
                decrement: _decrement,
              ),
              Text(
                'Total Price: Rs.${getTotalAmount().toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class QuantityCounter extends StatelessWidget {
  final int count;
  final VoidCallback increment;
  final VoidCallback decrement;

  const QuantityCounter({
    Key? key,
    required this.count,
    required this.increment,
    required this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.remove_circle_outline,
            color: Colors.lightBlueAccent,
          ),
          onPressed: decrement,
        ),
        Text(
          '$count',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.add_circle_outlined,
            color: Colors.lightBlueAccent,
          ),
          onPressed: increment,
        ),
      ],
    );
  }
}

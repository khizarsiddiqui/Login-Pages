import 'package:flutter/material.dart';
import 'item_card.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  State<ItemsList> createState() => _ItemsListState();
}

final List<String> itemText = [
  'Pizza',
  'Zinger',
  'Desserts',
  'Burger',
  'Drinks',
  'Cuisines',
  'Sandwiches',
];
List<String> itemCode = [
  "Code-01",
  "Code-02",
  "Code-03",
  "Code-04",
  "Code-05",
  "Code-06",
  "Code-07",
];
final List<String> priceList = [
  '200',
  '1200',
  '500',
  '700',
  '100',
  '2200',
  '600',
];

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Items"),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: itemCode.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ItemCard(
              itemText: itemText[index],
              itemCode: itemCode[index],
              priceList: priceList[index],
            ),
          );
        },
      ),
    );
  }
}

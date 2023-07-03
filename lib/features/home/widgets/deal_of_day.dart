import 'package:flutter/material.dart';

class DealofDay extends StatefulWidget {
  const DealofDay({super.key});

  @override
  State<DealofDay> createState() => _DealofDayState();
}

class _DealofDayState extends State<DealofDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Image.network(
          'https://images.unsplash.com/flagged/photo-1564468781192-f023d514222d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8TWVucyUyMHdlYXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Mens Wear',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1508380702597-707c1b00695c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJpbW1lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1508380702597-707c1b00695c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJpbW1lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1508380702597-707c1b00695c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJpbW1lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1508380702597-707c1b00695c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJpbW1lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1508380702597-707c1b00695c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJpbW1lcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        )
      ],
    );
  }
}

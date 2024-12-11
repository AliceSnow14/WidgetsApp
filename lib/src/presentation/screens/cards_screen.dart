import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {
    'title': 'Titulo 1',
    'elevation': 5.0,
  },
  {
    'title': 'Titulo 2',
    'elevation': 10.0,
  },
  {
    'title': 'Titulo 3',
    'elevation': 15.0,
  },
  {
    'title': 'Titulo 4',
    'elevation': 20.0,
  },
  {
    'title': 'Titulo 5',
    'elevation': 25.0,
  },
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map(
          (card) => _CardType1(
            title: card['title'],
            elevation: card['elevation'],
          ),
        ),
      ],
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String title;
  final double elevation;
  const _CardType1({
    required this.title,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}

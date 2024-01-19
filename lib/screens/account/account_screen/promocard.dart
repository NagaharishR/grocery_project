import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromoCardPage extends StatefulWidget {
  const PromoCardPage({super.key});

  @override
  State<PromoCardPage> createState() => _PromoCardPageState();
}

class _PromoCardPageState extends State<PromoCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Promo Card'),
      ),
    );
  }
}

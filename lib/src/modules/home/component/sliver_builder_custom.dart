import 'dart:math';

import 'package:flutter/material.dart';

class SliverBuilderCustom extends StatelessWidget {


  const SliverBuilderCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
        builder: (BuildContext context, constraints) {
          const expandedHeight = 155.0;
          final scrolled = min(expandedHeight, constraints.scrollOffset) / expandedHeight;
          return SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: expandedHeight,
            pinned: true,
            backgroundColor: Color.fromARGB((scrolled * 255).round(), 102, 102, 255),
            flexibleSpace: const FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.fromLTRB(20,0,0,0),
                child: Text(
                  'Âm thanh mưa',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}

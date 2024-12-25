import 'package:flutter/material.dart';

import 'gap.dart';

class CustomButtonSheet extends StatelessWidget {
  final String title;
  final List<String> items;
  final void Function(int index) onTap;

  const CustomButtonSheet({
    super.key,
    required this.title,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pilih $title',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const Gap.v(h: 16),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () => onTap(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

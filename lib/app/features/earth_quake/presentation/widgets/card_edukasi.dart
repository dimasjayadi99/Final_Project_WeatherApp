import 'package:flutter/material.dart';

class CardEdukasi extends StatelessWidget {
  const CardEdukasi({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: SizedBox(
        width: 250,
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://www.suarasurabaya.net/wp-content/uploads/2021/04/gempa-840x493.png',
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
                Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                const Positioned.fill(
                  child: Center(
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text('Mitigasi menghadapi Gempa bumi')
          ],
        ),
      ),
    );
  }
}

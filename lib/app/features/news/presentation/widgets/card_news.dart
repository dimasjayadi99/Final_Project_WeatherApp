import 'package:flutter/material.dart';
import 'package:pantera/app/shared/custom_divider.dart';
import '../../../../shared/gap.dart';
import '../../models/news_model.dart';

class CardNews extends StatelessWidget {
  final List<NewsModel> news;
  final int index;
  const CardNews({super.key, required this.news, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              news[index].image,
              width: 125,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const Gap.h(w: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news[index].title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Gap.v(h: 8),
                const CustomDivider(),
                const Gap.v(h: 8),
                Text(
                  news[index].content,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Gap.v(h: 8),
                Text(
                  news[index].publish,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/style_const.dart';
import 'package:pantera/app/features/news/models/news_model.dart';

import '../../../../shared/gap.dart';

class DetailNews extends StatelessWidget {
  final NewsModel news;
  const DetailNews({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: _buildContent(context),
          ),

          // custom app bar
          _buildCustomBar(context),
        ],
      ),
    );
  }

  /// private widget custom app bar
  _buildCustomBar(BuildContext context) {
    return Positioned(
      top: 56,
      left: 16,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            color: const Color(StyleConst.blackColor).withOpacity(0.5),
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.arrow_back,
              color: Color(StyleConst.whiteColor),
            ),
          ),
        ),
      ),
    );
  }

  /// private widget content
  _buildContent(BuildContext context) {
    return Column(
      children: [
        // Image Preview
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 375,
          child: Image.network(
            news.image,
            fit: BoxFit.cover,
          ),
        ),

        // Content
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Detail Content
              Text(
                'Berita Terupdate BMKG',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.grey),
              ),
              const Gap.v(h: 8),
              Text(
                news.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Gap.v(h: 16),
              Text(
                news.publish,
                style: const TextStyle(fontSize: 12),
              ),
              const Gap.v(h: 16),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
              const Gap.v(h: 16),
              Text(news.content),
            ],
          ),
        )
      ],
    );
  }
}

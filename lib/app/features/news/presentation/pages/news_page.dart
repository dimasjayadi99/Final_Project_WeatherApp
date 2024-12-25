import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/features/news/presentation/pages/detail_news.dart';
import 'package:pantera/app/features/news/presentation/widgets/card_news.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../shared/gap.dart';
import '../../models/news_model.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(StyleConst.secondaryColor),
      appBar: _buildAppBar(context),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          color: Color(StyleConst.whiteColor),
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)),
                  hintText: 'Telusuri...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search)),
            ),
            const Gap.v(
              h: 32,
            ),
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(DetailNews(
                          news: list[index],
                        ));
                      },
                      child: CardNews(
                        news: list,
                        index: index,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Gap.v(
                        h: 24,
                      ),
                  itemCount: list.length),
            ),
          ],
        ),
      )),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: const Color(StyleConst.secondaryColor),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Berita Terkini',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: const Color(StyleConst.whiteColor),
                ),
          ),
          const Gap.v(h: 4),
          Text(
            'Pantau informasi, waspada bersama 📢',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color(StyleConst.whiteColor),
                ),
          ),
        ],
      ),
    );
  }
}

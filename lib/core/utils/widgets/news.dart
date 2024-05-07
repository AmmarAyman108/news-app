import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/features/web_details_view.dart/presentation/Views/WebView.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/text.dart';

class News extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const News({super.key, required this.NewsModelData});
  // ignore: non_constant_identifier_names
  final NewsModel NewsModelData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WebView(Urldetails: NewsModelData.urlDetails),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AspectRatio(
                aspectRatio: 2 / 1.2,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: NewsModelData.image ??
                      'https://media.gettyimages.com/id/184625088/photo/breaking-news-headline.jpg?s=1024x1024&w=gi&k=20&c=MnnbhD8rU_Pbq6wXmRfWvzIE3P_3fVNWekD6pErxP8A=',
                  errorWidget: (context, url, error) => Center(
                      child: const Icon(
                          color: Color.fromARGB(255, 255, 60, 0), Icons.error)),
                  placeholder: (context, url) => Center(
                      child: const CircularProgressIndicator(
                    color: Colors.white,
                  )),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 10),
            child: text(
                title: NewsModelData.title,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          text(
            title: NewsModelData.description ?? '',
            fontSize: 14,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4, bottom: 23),
            child: Divider(
              color: Colors.grey,
              thickness: .8,
            ),
          )
        ],
      ),
    );
  }
}

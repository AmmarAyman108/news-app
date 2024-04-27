import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Views/WebView.dart';
import 'package:news_app/Widgets/text.dart';

class News extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const News({super.key, required this.NewsModleData});
  // ignore: non_constant_identifier_names
  final NewsModel NewsModleData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WebView(Urldetails: NewsModleData.urlDetails),
      )),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                NewsModleData.image ??
                    'https://media.gettyimages.com/id/184625088/photo/breaking-news-headline.jpg?s=1024x1024&w=gi&k=20&c=MnnbhD8rU_Pbq6wXmRfWvzIE3P_3fVNWekD6pErxP8A=',
                width: double.infinity,
                height: 238,
                fit: BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 10),
            child: text(
                title: NewsModleData.title,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          text(
            title: NewsModleData.description ?? '',
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

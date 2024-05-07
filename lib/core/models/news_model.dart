class NewsModel {
  final String? image, description, urlDetails;
  final String title;
  const NewsModel({
    required this.title,
    this.image,
    this.description,
    this.urlDetails,
  });
  factory NewsModel.fromJson(jsonData) {
    return NewsModel(
      title: jsonData['title'],
      description: jsonData['description'],
      image: jsonData['urlToImage'],
      urlDetails: jsonData['url'],
    );
  }
}

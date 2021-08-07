//Now let's create the article model
// for that we just need to copy the property from the json structure
// and make a dart object





class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  //Now let's create the constructor
  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  //And now let's create the function that will map the json into a list
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article( 
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content']  
    );
  }
}

//let's start by making the source model class so
// it will be easier to parse the Json

class Source {
  String id;
  String name;

  //Let's create the constructor
  Source({this.id, this.name});

  //Let's create the factory function to map the json
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(id: json['id']as String, name: json['name']as String,);
  }
}
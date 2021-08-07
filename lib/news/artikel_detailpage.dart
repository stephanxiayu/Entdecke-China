import 'package:china/news/api_service.dart';
import 'package:china/news/artikel_model.dart';
import 'package:china/news/costumerlist.dart';
import 'package:flutter/material.dart';



class HomePageArtike extends StatefulWidget {
  @override
  _HomePageArtikeState createState() => _HomePageArtikeState();
}

class _HomePageArtikeState extends State<HomePageArtike> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("News App", style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
      ),

      //Now let's call the APi services with futurebuilder wiget
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //let's check if we got a response or not
          if (snapshot.hasData) {
            //Now let's make a list of articles
            List<Article> articles = snapshot.data;
            return ListView.builder(
              //Now let's create our custom List tile
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customListTile(articles[index], context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                //let's add the height

                image: DecorationImage(
                    image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
             SizedBox(
              height: 8.0,
            ),
            Text( 
              article.content,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
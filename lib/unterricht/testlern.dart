import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TestLern extends StatefulWidget {
  const TestLern({ Key key, this.title }) : super(key: key);
  final String title;
  @override
  _TestLernState createState() => _TestLernState();
}

class _TestLernState extends State<TestLern> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId:  'R4xLzIF2e4c', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: true,

      

      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: SingleChildScrollView(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(height: 300,width: double.infinity,
                child: YoutubePlayer(
                  controller: _controller, 
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.black,
                 
                 
                ),
              ), 
              SizedBox(height: 40,),
              Text("力波， 你好。你好，陆雨平。 林娜，你好吗? 我很好，你呢？也很好。陆雨平，你好吗？我很好。你爸爸，妈妈好吗？他们都很好。你忙吗？我不忙。你男朋友呢？他很忙。哥哥，你要咖啡吗？我要咖啡。我也要咖啡。好，我们都喝咖啡。力波，那是谁？那是我们老师。他是哪国人。他是中国人。我们老师都是中国人。陈老师，您好！这是我哥哥，他是外语老师。你好。这是我朋友。你好！你也是老师吗？您好！我不是老师，我是医生。力波，这是你奶奶吗？不是，她是我外婆。外婆，您好！可以进来吗？请进！杨老师，您好。这是我朋友，他是记者。请问，您贵姓？我姓陆，叫陆雨平。你好，陆先生，认识你很高兴。杨老师，认识您，我也很高兴。我是语言学院的学生。我姓林，叫林娜。我是英国人。你姓什么？我姓马，叫马大为。你是加拿大人吗？我不是加拿大人，我是美国人，也是语言学院的学生。我学习汉语。请问，这是王小云的宿舍吗？是。请进，请坐。谢谢。王小云在吗？她不在。她在哪儿？对不起，我不知道。没关系。好，再见。再见。小姐，请问餐厅在哪儿？在二层二零四号。谢谢。不用谢。大为，我们在这儿。对不起，我来晚了。没关系。林娜，昨天的京剧怎们样？很有意思。今天天气很好，我们去游泳，好吗？太好了！什么时候去? 现在去，可以吗？可以。杨老师，明天您有时间吗？对不起，请在说一遍。明天您有时间吗？我们去打球，好吗？很抱歉，明天我很忙，恐怕不行。谢谢你们。"),
              ],
          ),
        ),
      ),
    );
  }
}
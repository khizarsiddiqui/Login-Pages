import 'package:flutter/material.dart';
import 'components/feed_cards.dart';
import 'components/poll_card.dart';

class FeedPage extends StatefulWidget {
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final List<Widget> _tabs = [
    // Content for the "Feed" tab
    SingleChildScrollView(
      child: Column(
        children: [
          FeedCard(
            text1: "Hello",
            text2: "0 comments",
            text3: "0",
            startingText: "Khizar S.",
            date: "5 days ago",
            occupation: "CEO",
          ),
          PollCard(
            likeCount: "0",
            centerText1: "Can you guess it?",
            comment: "2 comments",
            centerText2: "new",
            centerText3: "how",
            startingText: "Khizar S.",
            date: "5 days ago",
            occupation: "CEO",
            voteCount: "1 vote",
          ),
          FeedCard(
            text1: "Pakistan Zindabad",
            text2: "3 comments",
            text3: "2",
            startingText: "Khizar S.",
            date: "15 days ago",
            occupation: "CEO",
          ),
          PollCard(
            likeCount: "4",
            centerText1: "What about weather? Cold or not?",
            comment: "2 comments",
            centerText2: "Yes",
            centerText3: "Hot",
            startingText: "Khizar S.",
            date: "Few days ago",
            occupation: "CEO",
            voteCount: "3 votes",
          ),
        ],
      ),
    ),
    // Content for the "Events" tab
    SingleChildScrollView(
      child: Column(
        children: [
          FeedCard(
            text1: "Hello",
            text2: "0 comments",
            text3: "0",
            startingText: "Khizar S.",
            date: "5 days ago",
            occupation: "CEO",
          ),
          PollCard(
            likeCount: "0",
            centerText1: "Can you guess it?",
            comment: "2 comments",
            centerText2: "new",
            centerText3: "how",
            startingText: "Khizar S.",
            date: "5 days ago",
            occupation: "CEO",
            voteCount: "1 vote",
          ),
          FeedCard(
            text1: "Pakistan Zindabad",
            text2: "3 comments",
            text3: "2",
            startingText: "Khizar S.",
            date: "15 days ago",
            occupation: "CEO",
          ),
          PollCard(
            likeCount: "4",
            centerText1: "What about weather? Cold or not?",
            comment: "2 comments",
            centerText2: "Yes",
            centerText3: "Hot",
            startingText: "Khizar S.",
            date: "Few days ago",
            occupation: "CEO",
            voteCount: "3 votes",
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: TabBar(
            indicatorColor: Colors.blue,
            labelColor: const Color.fromARGB(255, 34, 85, 127),
            tabs: <Widget>[
              Tab(
                text: "Feed",
                icon: Icon(
                  Icons.feed,
                  color: Colors.black,
                ),
              ),
              Tab(
                text: "Events",
                icon: Icon(
                  Icons.event,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class AddStory extends StatefulWidget {
  const AddStory({Key? key}) : super(key: key);

  @override
  _AddStoryState createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  final StoryController _controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: StoryView(storyItems: [
      StoryItem.text(
          title: "title", backgroundColor: Colors.green, roundedTop: true),
      StoryItem.pageImage(
          url:
              "https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80",
          imageFit: BoxFit.contain,
          controller: _controller),
      StoryItem.inlineImage(
          url:
              'https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80',
          caption: Text(
            "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black54,
              fontSize: 17,
            ),
          ),
          imageFit: BoxFit.contain,
          controller: _controller)
    ], inline: false, repeat: false, controller: _controller));
  }
}

// import 'package:flutter/material.dart';

// import 'package:story_view/story_view.dart';

// class StoryPageView extends StatefulWidget {
//   @override
//   _StoryPageViewState createState() => _StoryPageViewState();
// }

// class _StoryPageViewState extends State<StoryPageView> {
//   final controller = StoryController();

//   @override
//   Widget build(BuildContext context) {
//     final List<StoryItem> storyItems = [
//       StoryItem.text(
//           title: '''“When you talk, you are only repeating something you know.
//        But if you listen, you may learn something new.” 
//        – Dalai Lama''', backgroundColor: Colors.blueGrey),
//       StoryItem.text(
//           title: '''“When you talk, you are only repeating something you know.
//        But if you listen, you may learn something new.” 
//        – Dalai Lama''', backgroundColor: Colors.blueGrey),
//       StoryItem.text(
//           title: '''“When you talk, you are only repeating something you know.
//        But if you listen, you may learn something new.” 
//        – Dalai Lama''', backgroundColor: Colors.blueGrey),
//     ];
//     return Material(
//       child: StoryView(
//         storyItems: storyItems,
//         controller: controller,
//         inline: false,
//         repeat: true,
//       ),
//     );
//   }
// }

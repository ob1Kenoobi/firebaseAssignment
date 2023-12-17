import 'package:flutter/material.dart';
import 'package:match_score_app/models/match.dart';

class MatchDetailsScreen extends StatelessWidget {
  final Match match;

  MatchDetailsScreen({required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Match: ${match.name}'),
          Text('Goals: ${match.goals}'),
          Text('Running Time: ${match.runningTime}'),
          Text('Total Time: ${match.totalTime}'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:match_score_app/models/match.dart';
import 'package:match_score_app/screens/match_details_screen.dart';

class MatchListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match List'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('matches').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Text('No data available');
          }

          var matches = snapshot.data!.docs.map((doc) => Match.fromMap(doc.data() as Map<String, dynamic>)).toList();

          return ListView.builder(
            itemCount: matches.length,
            itemBuilder: (context, index) {
              var match = matches[index];
              return ListTile(
                title: Text(match.name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MatchDetailsScreen(match: match),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

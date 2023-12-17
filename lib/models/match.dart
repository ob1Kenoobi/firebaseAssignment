class Match {
  final String name;
  final int goals;
  final String runningTime;
  final String totalTime;

  Match({
    required this.name,
    required this.goals,
    required this.runningTime,
    required this.totalTime,
  });

  factory Match.fromMap(Map<String, dynamic> data) {
    return Match(
      name: data['name'],
      goals: data['goals'],
      runningTime: data['running_time'],
      totalTime: data['total_time'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'goals': goals,
      'running_time': runningTime,
      'total_time': totalTime,
    };
  }
}

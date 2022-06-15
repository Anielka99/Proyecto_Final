class CourseIdResponse {
  CourseIdResponse({
    required this.id,
    required this.period,
    required this.teacher,
    required this.note,
    required this.tasks,
  });

  String id;
  String period;
  String teacher;
  int note;
  List<Task> tasks;

  factory CourseIdResponse.fromJson(Map<String, dynamic> json) => CourseIdResponse(
        id: json["id"],
        period: json["period"],
        teacher: json["teacher"],
        note: json["note"],
        tasks: List<Task>.from(json["tasks"].map((x) => Task.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "period": period,
        "teacher": teacher,
        "note": note,
        "tasks": List<dynamic>.from(tasks.map((x) => x.toJson())),
      };
}

class Task {
  Task({
    required this.title,
    required this.content,
    required this.value,
    required this.qualification,
  });

  String title;
  String content;
  int value;
  int qualification;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        title: json["title"],
        content: json["content"],
        value: json["value"],
        qualification: json["qualification"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
        "value": value,
        "qualification": qualification,
      };
}

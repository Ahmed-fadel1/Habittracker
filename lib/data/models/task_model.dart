class Task {
  final String id;
  final String text;
  final bool done;

  Task({required this.id, required this.text, required this.done});

  factory Task.fromMap(String id, Map<String, dynamic> data) {
    return Task(id: id, text: data['text'] ?? '', done: data['done'] ?? false);
  }
}

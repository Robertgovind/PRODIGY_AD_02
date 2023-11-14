import 'package:flutter/material.dart';
import 'package:prodigy_ad_02/models/task_data.dart';
import 'package:prodigy_ad_02/widgets/task_card.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatefulWidget {
  const TaskScreen({
    super.key,
  });

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Provider.of<TaskData>(context).taskList.length,
        itemBuilder: (context, index) {
          return TaskCard(
            taskData: Provider.of<TaskData>(context).taskList[index],
          );
        },
      ),
    );
  }
}

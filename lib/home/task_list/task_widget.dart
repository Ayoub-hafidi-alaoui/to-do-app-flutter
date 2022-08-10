import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,

      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor,
            ),
          ),
          Column(
            children: [
              Text("title", style: Theme.of(context).textTheme.bodyMedium),
              Row(
                children: [
                  Icon(Icons.access_time),
                  Text("title", style: Theme.of(context).textTheme.bodySmall,)
                ],
              )
            ],
          )

        ],
      ),
    );
  }

}
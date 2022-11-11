import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, World', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                  Text('150 Points', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ),
          Icon(Icons.notifications)
        ],
      ),
    );
  }
}
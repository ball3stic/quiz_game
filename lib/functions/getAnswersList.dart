import 'package:flutter/material.dart';
import 'package:quiz_game/pages/quiz_page.dart';

Widget getAnswersList(int index, {required Function() onTap}) {
  return ListTile(
    title: Text(
      questionList[questionIndex].answersList![index],
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      textAlign: TextAlign.start,
      textDirection: TextDirection.rtl,
    ),
    onTap: onTap,
  );
}

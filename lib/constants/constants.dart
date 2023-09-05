import 'package:flutter/material.dart';
import 'package:quiz_game/data/question_model.dart';

final Color? backgroundColor = Colors.white;
final Color? appBarBG = const Color.fromRGBO(38, 84, 164, 1);
final Text homeAppBarTitle = Text(
  'کوییز گیم',
  style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
);
Text quizAppBarTitle = Text(
  'سوال ها',
  style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
);
final double appBarElevation = 0.8;

List<Question> getQuestionsList() {
  Question q1 = Question();
  Question q2 = Question();
  Question q4 = Question();
  Question q5 = Question();
  Question q6 = Question();
  Question q7 = Question();
  Question q8 = Question();
  Question q9 = Question();
  Question q10 = Question();

  q1.title = 'معروف ترین شعبده باز جهان کیست ؟';
  q1.imageName = 'images/1.png';
  q1.answersList = [
    "محمد بن سلمان",
    "مایکل اسکافیلد",
    "دیوید جانسون",
    "هری هودینی",
  ];
  q1.correctAnswer = 3;

  q2.title = "چه کشوری ایستگاه فضایی میر را بنا کرد؟";
  q2.answersList = [
    'روسیه',
    'آمریکا',
    'چین',
    'هند',
  ];
  q2.correctAnswer = 3;
  q2.imageName = 'images/2.png';

  q4.title = "تعداد اعضای شورای نگهبان چند نفر است؟";
  q4.answersList = [
    'شش نفر',
    'هشت نفر',
    'سیزده نفر',
    'دوازده نفر',
  ];
  q4.correctAnswer = 3;
  q4.imageName = 'images/3.png';

  q5.title = "ارتفاعات سهند در کدام استان قرار دارد؟";
  q5.answersList = [
    'آذربایجان شرقی ',
    'آذربایجان غربی ',
    'کردستان ',
    'زنجان ',
  ];
  q5.correctAnswer = 0;
  q5.imageName = 'images/4.png';

  q6.title = "خرمشهر در کدام عملیات آزاد شد؟";
  q6.answersList = [
    'ثامن الاعمع',
    'بیت المقدس',
    'فتح المبین',
    'خیبر',
  ];
  q6.correctAnswer = 1;
  q6.imageName = 'images/5.png';

  q7.title =
      "کدام ورزشکار ایرانی موفق به کسب مدال طلای المپیک 1966 آتلانتا شد؟";
  q7.answersList = [
    'امیررضا خادم',
    'حسین رضا زاده',
    'رسول خادم',
    'عباس جدیدی',
  ];
  q7.correctAnswer = 2;
  q7.imageName = 'images/6.png';

  q8.title =
      "کدام کارگردان رکورد دار دریافت سیمرغ بهترین فیلم و کارگردانی در جشنواره فیلم فجر است؟";
  q8.answersList = [
    'مجید مجیدی',
    'ابراهیم حاتمی کیا',
    'اصغر فرهادی',
    'داریوش مهرجویی',
  ];
  q8.correctAnswer = 1;
  q8.imageName = 'images/7.png';

  q9.title = "تابلوی لبخند ژکوند اثر کیست؟";
  q9.answersList = [
    'ونگوک',
    'پیکاسو',
    'رامبراند',
    'داوینچی',
  ];
  q9.correctAnswer = 3;
  q9.imageName = 'images/8.png';

  q10.title = "کدام درخت نماد صلح است؟";
  q10.answersList = [
    'سرو',
    'زیتون',
    'نارنج',
    'سیب',
  ];
  q10.correctAnswer = 1;
  q10.imageName = 'images/9.png';

  return [q1, q2, q4, q5, q6, q7, q8, q9, q10];
}

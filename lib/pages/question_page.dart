// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app_deaf/models/question_model.dart';
import 'package:app_deaf/utils/app_constant.dart';
import 'package:app_deaf/widget/widget_image_youtube.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:app_deaf/models/Coures.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({
    Key? key,
    required this.courseModel,
  }) : super(key: key);

  final Coures courseModel;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  Coures? couresModel;
  bool load = true;
  bool? haveData;
  var questionModels = <QuestionModel>[];

  @override
  void initState() {
    super.initState();
    couresModel = widget.courseModel;
    readQuestion();
  }

  Future<void> readQuestion() async {
    String urlAPI =
        'https://www.androidthai.in.th/fluttertraining/getQuestionWhereIdCourseUng.php?isAdd=true&coure_id=${couresModel!.id}';

    await Dio().get(urlAPI).then((value) {
      load = false;

      if (value.toString() == 'null') {
        haveData = false;
      } else {
        haveData = true;
        for (var element in json.decode(value.data)) {
          QuestionModel model = QuestionModel.fromMap(element);
          questionModels.add(model);
        }
      }

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(couresModel!.couresname),
      ),
      body: load
          ? const Center(child: CircularProgressIndicator())
          : haveData!
              ? ListView.builder(
                  itemCount: questionModels.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (index + 1).toString(),
                            style: AppConstant().h1Style(),
                          ),
                          contentQuesetion(index),
                        ],
                      ),
                      Text('questionId ---> ${questionModels[index].id}'),
                      Divider(color: AppConstant.darkColor, thickness: 1,)
                    ],
                  ),
                )
              : const Text('ไม่มีคำถาม'),
    );
  }

  StatelessWidget contentQuesetion(int index) {
    return questionModels[index].questionText.isNotEmpty
        ? Text(
            questionModels[index].questionText,
            style: AppConstant().h1Style(),
          )
        : WidgetImageYoutube(
            urlYoutube: questionModels[index].questionVideo,
            width: 180,
            height: 130,
          );
  }
}

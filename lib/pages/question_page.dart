// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app_deaf/models/answer_model.dart';
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
  var listAnswerModels = <List<AnswerModel>>[];
  var corrects = <int?>[];
  var trueCorrects = <int>[];

  var listCorrectBools = <List<bool>>[];

  @override
  void initState() {
    super.initState();
    couresModel = widget.courseModel;
    readQuestion();
  }

  Future<void> readQuestion() async {
    String urlAPI =
        'https://www.androidthai.in.th/fluttertraining/getQuestionWhereIdCourseUng.php?isAdd=true&coure_id=${couresModel!.id}';

    await Dio().get(urlAPI).then((value) async {
      load = false;

      if (value.toString() == 'null') {
        haveData = false;
      } else {
        haveData = true;
        for (var element in json.decode(value.data)) {
          QuestionModel model = QuestionModel.fromMap(element);
          questionModels.add(model);
          var answerModels = <AnswerModel>[];
          var correctBools = <bool>[];
          int indexTrue = 0;
          String urlApiAnswer =
              'https://www.androidthai.in.th/fluttertraining/getAnswerWhereIdQuestionId.php?isAdd=true&question_id=${model.id}';
          await Dio().get(urlApiAnswer).then((value) {
            for (var element in json.decode(value.data)) {
              AnswerModel answerModel = AnswerModel.fromMap(element);
              answerModels.add(answerModel);
              correctBools.add(false);
              if (answerModel.correct.isNotEmpty) {
                trueCorrects.add(indexTrue);
              }
              indexTrue++;
            }
          });
          listAnswerModels.add(answerModels);
          listCorrectBools.add(correctBools);
          corrects.add(null);
        }
      }
      print('trueCorrects ---> $trueCorrects');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(couresModel!.couresname),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check_box),
          )
        ],
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
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: listAnswerModels[index].length,
                        itemBuilder: (context, index2) => RadioListTile(
                          value: index2,
                          groupValue: corrects[index],
                          onChanged: (value) {
                            corrects[index] = value!;
                            print('corrects ==> $corrects');
                            setState(() {});
                          },
                          title: listAnswerModels[index][index2]
                                  .answerText
                                  .isNotEmpty
                              ? Text(listAnswerModels[index][index2].answerText)
                              : WidgetImageYoutube(
                                  urlYoutube: listAnswerModels[index][index2]
                                      .answerVideo,
                                  width: 100,
                                  height: 70,
                                ),
                        ),
                      ),
                      Divider(
                        color: AppConstant.darkColor,
                        thickness: 1,
                      )
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

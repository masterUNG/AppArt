// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert' as convert;

import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:app_deaf/models/ContentModel.dart';
import 'package:app_deaf/models/Coures.dart';
import 'package:app_deaf/pages/video_youtube.dart';
import 'package:app_deaf/routers.dart';
import 'package:app_deaf/service/contentApi.dart' show ContentsApi;

class ContentPage extends StatefulWidget {
  const ContentPage({
    Key? key,
    required this.couresModel,
  }) : super(key: key);

  final Coures couresModel;

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  late TextEditingController controller;
  Future<List<ContentModel>>? futureContent;

  final debouncer = Debouncer(milliSecond: 500);
  var contentModels = <ContentModel>[];
  var searchContentModels = <ContentModel>[];
  bool load = true;
  bool? haveData;

  @override
  void initState() {
    super.initState();
    futureContent =
        ContentsApi.futureContentApi(couresModel: widget.couresModel);

    controller = TextEditingController();

    readContentFromCouceId();
  }

  Future<void> readContentFromCouceId() async {
    String urlApi =
        'https://www.androidthai.in.th/fluttertraining/getContentWhereIdCourseUng.php?isAdd=true&coure_id=${widget.couresModel.id}';
    await Dio().get(urlApi).then((value) {
      if (value == 'null') {
        haveData = false;
      } else {
        haveData = true;

        for (var element in convert.json.decode(value.data)) {
          ContentModel model = ContentModel.fromMap(element);
          contentModels.add(model);
        }
      }
      searchContentModels.addAll(contentModels);
      print(
          'ขนาด searchContentModel --> ${searchContentModels.length}, haveData --> $haveData');
      load = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: SafeArea(
          child: Container(
            decoration:
                const BoxDecoration(color: Color(0xFFFFB200), boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 247, 244, 244),
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(0, 5))
            ]),
            alignment: Alignment.center,
            child: AnimationSearchBar(
                backIconColor: Colors.black,
                centerTitle: 'บทเรียน',
                onChanged: (text) {
                  debugPrint(text);
                },
                searchTextEditingController: controller,
                horizontalPadding: 5),
          ),
        ),
      ),
      // body listview
      body: FutureBuilder<List<ContentModel>>(
          future: futureContent,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //List<Coures> coures = snapshot.data;
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shadowColor: Color.fromARGB(220, 6, 6, 6),
                      color: Color(0xFFFFB200),
                      child: InkWell(
                        // กดไปหน้า content
                        onTap: () {
                          _handleCilkContentVideo(
                              contentModel: snapshot.data![index]);
                        },

                        child: Padding(
                          padding: const EdgeInsets.all(20.6),
                          child: Column(
                            children: [
                              Text(
                                snapshot.data![index].contentname.toString(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(child: Text("ยังไม่มี Content"));
            }
            return CircularProgressIndicator();
          }),
    );
  }

  void _handleCilkContentVideo({required ContentModel contentModel}) {
    // Navigator.pushNamed(context, AppRoute.content_video);
    // Navigator.pushNamed(context, AppRoute.navbars);

    Get.to(VideoYoutube(
      contentModel: contentModel,
    ));
  }
}

class Debouncer {
  final int milliSecond;
  Timer? timer;
  VoidCallback? voidCallback;
  Debouncer({
    required this.milliSecond,
    this.timer,
    this.voidCallback,
  });

  run(VoidCallback voidCallback) {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: milliSecond), voidCallback);
  }
}

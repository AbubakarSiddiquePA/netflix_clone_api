import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

import '../../core/constants.dart';
import '../../core/models/result.dart';
import '../home/functions/functions.dart';
import 'main_card.dart';

class Maintitlecard extends StatelessWidget {
  const Maintitlecard({Key? key, required this.title, required this.category})
      : super(key: key);
  final String title;
  final List<Result> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: title),
        kheight,
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              HomeFunction.trending.length,
              ((index) => Maincard(
                    imageUrl: category[index].posterPath!,
                  )),
            ),
          ),
        )
      ],
    );
  }
}

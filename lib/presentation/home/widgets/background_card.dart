import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../functions/functions.dart';
import 'custom_button.dart';

// class BackGroundCard extends StatelessWidget {
//   const BackGroundCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: 600,
//           // color: kwhite,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   fit: BoxFit.cover, image: NetworkImage(kmainimage))),
//         ),
// Positioned(
//   bottom: 0,
//   left: 0,
//   right: 0,
//   child: Padding(
//     padding: const EdgeInsets.only(bottom: 10),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         const CustomButton(
//           title: "My List",
//           icon: Icons.add,
//         ),
//         _playbutton(),
//         const CustomButton(icon: Icons.info, title: "Info"),
//       ],
//     ),
//   ),
// )
//       ],
//     );
//   }
// }
class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: HomeFunction.trending
                .map(
                  (item) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500${item.posterPath}'),
                      ),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
                height: 600,
                autoPlay: true,
                enlargeCenterPage: true,
                initialPage: 1)),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButton(
                  title: "My List",
                  icon: Icons.add,
                ),
                PlayButton(),
                const CustomButton(icon: Icons.info, title: "Info"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(kwhite)),
        onPressed: () {},
        icon: const Icon(Icons.play_arrow, size: 30, color: backgroundColor),
        label: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: backgroundColor),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

// class VideoWidgets extends StatelessWidget {
//   const VideoWidgets({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SizedBox(
//           width: double.infinity,
//           height: 200,
//           child: Image.network(
//             newAndHotTempImage,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Positioned(
//           bottom: 10,
//           right: 10,
//           child: CircleAvatar(
//             radius: 25,
//             backgroundColor: Colors.black.withOpacity(0.5),
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.volume_off,
//                 color: kwhite,
//                 size: 22,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.network(
        'https://image.tmdb.org/t/p/w500$image',
        fit: BoxFit.fill,
      ),
    );
  }
}

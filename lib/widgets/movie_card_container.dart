import 'package:flutter/material.dart';
import 'package:moviee/widgets/movie_card.dart';
import 'package:sizer/sizer.dart';
//import 'package:animations/animations.dart';
class MovieCardContainer extends StatelessWidget {
  final Color themeColor;
  final ScrollController scrollController;
  final List<MovieCard> movieCards;

  MovieCardContainer({
    required this.themeColor,
    required this.scrollController,
    required this.movieCards,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //movie_card_container
      child: Padding(
        padding: EdgeInsets.only(right: 2.w, left: 2.w),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.only(top: 1.5.h),
            child: Wrap(children: movieCards),
          ),
        ),
      ),
    );
  }
}

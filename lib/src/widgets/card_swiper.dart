import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _Size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: _Size.width * 0.6,
        itemHeight: _Size.height * 0.9,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'details', arguments: 'arg');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                image: NetworkImage(
                    'https://via.placeholder.com/350x150'),
                placeholder: AssetImage('assets/no-image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        
      ),
    );
  }
}
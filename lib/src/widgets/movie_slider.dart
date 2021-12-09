import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Populares',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _MoviePoster();
                }),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 130,
      height: 190,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details',arguments: 'movie_id'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/350x150'),
                fit: BoxFit.cover,
                width: 130,
                height: 180,
              ),
            ),
          ),

         const SizedBox(
            height: 5,
          ),
          Text('Piratas del caribe 3 en l fin del mundo',
           maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:peliculas_app/src/widgets/widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
        child: Text('Peliculas en cines'),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
      
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            // widget Tarjetas Principal..
            CardSwiper(),
            SizedBox(height: 5),
            // widget de peliculas populares..
            MovieSlider(),
      
          ],
        ),
      ),
    );
  }
}
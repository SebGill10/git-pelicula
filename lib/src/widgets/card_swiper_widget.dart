import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  //recibimos la lista
  //
  final List<dynamic> peliculas;

  // Lo inicialisamos
  // y agregamos el ({@required this.peliculas});
  // para que mande la lista de pelicas a fuerza

  CardSwiper({@required this.peliculas});
  @override
  Widget build(BuildContext context) {
    //detecta el tamaño del dispositivo
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      //Agregamos un padding para utilizaar un poco de espacio
      padding: EdgeInsets.only(top: 20.0),
      // dimensiones

      child: Swiper(
        //Agregamos un Layot
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                  "https://cdn-3.expansion.mx/4e/41/45777a8f4539886b9a4ae7441b5c/60939868-356233055029032-2727987522876590928-n.jpg",
                  fit: BoxFit.cover));
          // el fit para que se adapte a las dimenciones que tiene
        },
        itemCount: peliculas.length,
        pagination: SwiperPagination(), // puntos en la parte posterior
        control: SwiperControl(), // Barras a los costados
      ),
    );
  }
}

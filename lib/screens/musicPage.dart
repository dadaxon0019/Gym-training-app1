import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/music_widget_model.dart';
import 'package:stacked/stacked_annotations.dart';

class Musics {
  final int id;
  final String imgUrl;
  final String name;
  final String mp3Name;
  final String mp3Url;

  Musics(
      {required this.id,
      required this.imgUrl,
      required this.name,
      required this.mp3Name,
      required this.mp3Url});
}

class MusicsScreen extends StatefulWidget {
  MusicsScreen({Key? key}) : super(key: key);

  @override
  State<MusicsScreen> createState() => _MusicsScreenState();
}

class _MusicsScreenState extends State<MusicsScreen> {
  static List<Musics> musics = [
    Musics(
        id: 1,
        imgUrl:
            'https://i.scdn.co/image/ab6761610000e5eb187484b54190415a779d3855',
        name: 'INSTASAMKA',
        mp3Name: 'MONEKEN LOVE',
        mp3Url:
            'https://muzes.net/uploads/music/2022/07/INSTASAMKA_MONEYKEN_LOVE.mp3'),
    Musics(
        id: 2,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/3927581/792fcfab.a.14030100-1/m1000x1000',
        name: 'Havana, Yaar, Kaiia',
        mp3Name: 'Last Night',
        mp3Url:
            'https://ruo.morsmusic.org/load/1250862203/Havana_Yaar_Kaiia_-_Last_Night_(musmore.com).mp3'),
    Musics(
        id: 3,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2433821/7fb1d6ed.a.10327742-1/m1000x1000',
        name: 'Miyagi & Andy Panda',
        mp3Name: 'Utopia',
        mp3Url:
            'https://ruo.morsmusic.org/load/1614272139/Miyagi_Andy_Panda_-_Utopia_(musmore.com).mp3'),
    Musics(
        id: 4,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
    Musics(
        id: 5,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
    Musics(
        id: 6,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
    Musics(
        id: 7,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
    Musics(
        id: 8,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
    Musics(
        id: 9,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
    Musics(
        id: 10,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2383988/fb0fec79.a.8641821-1/m1000x1000',
        name: 'Bonu ',
        mp3Name: 'Qora Tun',
        mp3Url:
            'https://ruo.morsmusic.org/load/1940945631/Bonu_-_KORA_TUN_(musmore.com).mp3'),
  ];

  var _filteredMovies = <Musics>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = musics.where((Musics musics) {
        return musics.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = musics;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _filteredMovies = musics;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    final id = musics[index].id;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MusicWidget(
                  music: musics[index],
                )));
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredMovies.length,
            itemExtent: 70,
            itemBuilder: (BuildContext context, int index) {
              final movie = _filteredMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 2))
                          ]),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Image.network(movie.imgUrl),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 0,
                                ),
                                Text(
                                  movie.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  movie.mp3Name,
                                  style: TextStyle(color: Colors.grey),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => {_onMovieTap(index)},
                          borderRadius: BorderRadius.circular(10),
                        ))
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Поиск',
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}

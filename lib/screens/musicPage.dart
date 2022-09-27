import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/music_widget_model.dart';

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
            'https://avatars.yandex.net/get-music-content/6214856/f6aee222.a.22823205-1/m1000x1000',
        name: 'INSTASAMKA',
        mp3Name: 'Moneken love',
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
            'https://avatars.yandex.net/get-music-content/5280749/83fb96f4.a.17438606-1/m1000x1000',
        name: 'MATRANG',
        mp3Name: 'Заманчивая',
        mp3Url:
            'https://ruo.morsmusic.org/load/2052041708/MATRANG_-_Zamanchivaya_(musmore.com).mp3'),
    Musics(
        id: 6,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/2806365/6a1ee4a3.a.11619745-1/m1000x1000',
        name: 'Filatov & Karas ',
        mp3Name: 'Чилить',
        mp3Url:
            'https://ruo.morsmusic.org/load/354974127/Filatov_Karas_-_CHilit_(musmore.com).mp3'),
    Musics(
        id: 7,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/6214856/2bf46525.a.22581100-2/m1000x1000',
        name: 'Ислам Итляшев ',
        mp3Name: 'Ай-яй-яй',
        mp3Url:
            'https://ruo.morsmusic.org/load/986842486/Islam_Itlyashev_-_Ajj-yajj-yajj_(musmore.com).mp3'),
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
            'https://avatars.yandex.net/get-music-content/2424959/9c725439.a.12753751-1/m1000x1000',
        name: 'Hans Zimmer ',
        mp3Name: 'Cornfield Chase',
        mp3Url:
            'https://ruo.morsmusic.org/load/1272336103/Hans_Zimmer_-_Cornfield_Chase_(musmore.com).mp3'),
    Musics(
        id: 10,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/5496390/aae8ee03.a.19540284-1/m1000x1000',
        name: 'Xcho',
        mp3Name: 'Эскизы',
        mp3Url:
            'https://ruo.morsmusic.org/load/1667116652/Xcho_-_JEskizy_(musmore.com).mp3'),
    Musics(
        id: 10,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/3334966/f58d85e7.a.12118137-1/m1000x1000',
        name: 'PIZZA, Елена Темникова',
        mp3Name: 'По краям',
        mp3Url:
            'https://ruo.morsmusic.org/load/831303524/PIZZA_Elena_Temnikova_-_Po_krayam_(musmore.com).mp3'),
    Musics(
        id: 10,
        imgUrl:
            'https://avatars.yandex.net/get-music-content/4581417/a47b8233.a.19038049-1/m1000x1000',
        name: 'Хамдам Собиров, Зиёда',
        mp3Name: 'Qora atirgul',
        mp3Url:
            'https://ruo.morsmusic.org/load/427910333/Zijoda_KHamdam_Sobirov_-_Qora_atirgul_(musmore.com).mp3'),
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
        CupertinoPageRoute(
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
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 110),
            itemCount: _filteredMovies.length,
            itemExtent: 85,
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
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  movie.mp3Name,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
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
          padding: const EdgeInsets.only(
            top: 50,
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Поиск',
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}

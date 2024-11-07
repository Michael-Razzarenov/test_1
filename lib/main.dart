import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shape Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ВТАСбзу-31. Раззаренов.М.И'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color _color = const Color.fromRGBO(48, 46, 42, 1);
  final Color _textColor = const Color.fromRGBO(229, 215, 196, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text(
          widget.title,
          style: TextStyle(color: _textColor),
        ),
      ),
      body: const MyWidget(),
    );
  }
}

class _CardData {
  final String text;
  final String? imageUrl;

  _CardData({required this.text,
    required this.imageUrl,
  });

}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      _CardData(
      text:
        'Дуб',
      imageUrl:
      'https://i.pinimg.com/originals/87/0e/a8/870ea8b045985931b00782898543b902.jpg',
      ),
      _CardData(
        text:
        'Орешник',
        imageUrl:
        'https://www.orinina.ru/upload/iblock/aa3/aa3dd02fc991c33fa167a9394bfb8bf1.JPG',
      ),
      _CardData(
        text:
        'Пихта',
        imageUrl:
        'https://selhoz.org/img/work/nomencl/10594.jpg',
      ),
      _CardData(
        text:
        'Вяз',
        imageUrl:
        'https://i.ytimg.com/vi/sVK8o5xkAM0/maxresdefault.jpg',
      ),
      _CardData(
        text:
        'Берёза',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=66a02553fdf911f94f7356ceacb3f9b7_l-5333965-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Рябина',
        imageUrl:
        'https://photopole.ru/wp-content/uploads/riabina-derevo-1.webp',
      ),
      _CardData(
        text:
        'Ясень',
        imageUrl:
        'https://www.picturethisai.com/wiki-image/1080/237899071756566528.jpeg',
      ),
      _CardData(
        text:
        'Ольха',
        imageUrl:
        'https://www.dearplants.com/wp-content/uploads/2022/05/Italian-alder-Alnus-cordata.jpg',
      ),
      _CardData(
        text:
        'Дрок',
        imageUrl:
        'https://treeseed.ru/pictures/product/big/10759_big.jpeg',
      ),
      _CardData(
        text:
        'Ива',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=df88611a2a7fa11d7e777cc27e9862fd_l-5351135-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Кипарис',
        imageUrl:
        'https://ic.pics.livejournal.com/cheshzhanna/30297292/867498/867498_900.jpg',
      ),
      _CardData(
        text:
        'Вереск',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=8b7503a980a11b2124b08699b695ddb2_l-4120924-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Падуб',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=4d636b5bd02b448bbac4da43c6b22512_l-5233156-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Терн',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=887c28a7a4353b74f54e5db2b746d09f_l-6335046-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Яблоня',
        imageUrl:
        'https://3kornya.ru/storage/vino/manzanasrojas-en-arbol_72593407-scaled%20(1).jpg',
      ),
      _CardData(
        text:
        'Виноград',
        imageUrl:
        'https://vinograd-sort.ru/wp-content/uploads/2022/02/vinograd4.jpg',
      ),
      _CardData(
        text:
        'Ежевика',
        imageUrl:
        'https://cvetvsadu.ru/wp-content/uploads/2024/01/1648960827_1-vsegda-pomnim-com-p-yezhevika-v-lesu-foto-1.jpg',
      ),
      _CardData(
        text:
        'Осина',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=d0da261eb30751241cf9ec5d1e0ed0e1_l-5299374-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Тополь',
        imageUrl:
        'https://million-wallpapers.com/wallpapers/4/17/15055683544110870988/pejzazh-z-derevom-b-lya-dorogi.jpg',
      ),
      _CardData(
        text:
        'Калина',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=cb553269fdde868a2086d3c3d258b962_l-5233844-images-thumbs&n=13',
      ),
      _CardData(
        text:
        'Бузина',
        imageUrl:
        'https://i.pinimg.com/originals/99/e7/86/99e786e4a715d077c2b6f01b7e945936.jpg',
      ),
      _CardData(
        text:
        'Тис',
        imageUrl:
        'https://images.live.vkplay.ru/user/14036205/avatar?change_time=1696861814',
      ),
      _CardData(
        text:
        'Омела',
        imageUrl:
        'https://kaliningradtv.ru/upload/news/picoriginal/image-1702901922_2183.jpg',
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(55,53,49,1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: data.map((e) => _Card.fromData(e)).toList(),
                ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String text;
  final String? imageUrl;

  const _Card({
    required this.text,
    this.imageUrl,
  });

  factory _Card.fromData(_CardData data) => _Card(
    text: data.text,
    imageUrl: data.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(229, 215, 196, 1,),
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 4.0,
          ),
            top: BorderSide(
              color: Colors.black,
              width: 4.0,
            )
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(48, 46, 42, 1),
                width: 2.0
              )
            ),
            child: ClipRRect(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                  imageUrl ?? '',
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Placeholder(),
                ),
              ),
            ),
          ),
          Flexible(
            child: Center(
              heightFactor: 5.0,
              child: Text (
                  text,
                  style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


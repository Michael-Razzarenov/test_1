import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/models/card.dart';
import '../datails_page/datails_page.dart';

part 'card.dart';

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
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      CardData(
        text:
        'Дуб',
        imageUrl:
        'https://i.pinimg.com/originals/87/0e/a8/870ea8b045985931b00782898543b902.jpg',
        descriptionText:
        'Дуб (лат. Quércus) — род деревьев и кустарников семейства Буковые (Faceplate), объединяющий более 600 видов. Дуб хорошо узнаваем благодаря его плодам — желудям (являющимся, по сути, орехами).',
      ),
      CardData(
        text:
        'Пихта',
        imageUrl:
        'https://selhoz.org/img/work/nomencl/10594.jpg',
        descriptionText:
        'Пи́хта (лат. Abides) — род вечнозелёных лесообразующих голосеменных растений семейства Сосновые (Pinnacle). Характерная особенность пихт — шишки у них, как и у настоящих кедров, в отличие от большинства других хвойных семейства сосновых, растут вверх и распадаются ещё на деревьях, оставляя после себя плоская. торчащие стержни, а хвоя плоская.',
      ),
      CardData(
        text:
        'Вяз',
        imageUrl:
        'https://i.ytimg.com/vi/sVK8o5xkAM0/maxresdefault.jpg',
        descriptionText:
        'Вяз, или ильм (лат. Úlmus), — род деревьев семейства Вязовые (Ulmaceae).Считается, что ильмы появились около 40 миллионов лет назад и включают в себя несколько десятков видов. Некоторые виды более известны под названиями вяз, береств Поволжье, на Южном Урале, Кавказе, в Центральной Азии вяз мелколистный и вяз приземистый называют карагач.',
      ),
      CardData(
        text:
        'Берёза',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=66a02553fdf911f94f7356ceacb3f9b7_l-5333965-images-thumbs&n=13',
        descriptionText:
        'Берёза (лат. Bétula) — род листопадных деревьев и кустарников семейства Берёзовые (Betulaceae). Берёза широко распространена в Северном полушарии; на территории России принадлежит к числу наиболее распространённых древесных пород. Общее число видов — около ста или немного больше. Многие виды берёзы — широко распространённые и важнейшие лесообразующие породы, в значительной мере определяющие облик и видовой состав лиственных и хвойно-лиственных (смешанных) лесов в умеренной и холодной части Евразии и Северной Америки.',
      ),
      CardData(
        text:
        'Рябина',
        imageUrl:
        'https://photopole.ru/wp-content/uploads/riabina-derevo-1.webp',
        descriptionText:
        'Ряби́на обыкнове́нная (лат. Sórbus aucupária) — дерево, вид рода Рябина (Sorbus) семейства Розовые (Rosaceae). Широко распространённое плодовое деревце, заметное своими яркими плодами, остающимися на ветвях до глубокой осени и даже иногда на всю зиму.',
      ),
      CardData(
        text:
        'Ясень',
        imageUrl:
        'https://www.picturethisai.com/wiki-image/1080/237899071756566528.jpeg',
        descriptionText:
        'Я́сень (лат. Fraxinus) — род древесных растений из семейства Маслиновые (Oleaceae)',
      ),
      CardData(
        text:
        'Ольха',
        imageUrl:
        'https://www.dearplants.com/wp-content/uploads/2022/05/Italian-alder-Alnus-cordata.jpg',
        descriptionText:
        'Ольха́ (лат. Álnus) — род деревьев и кустарников семейства Берёзовые (Betulaceae), объединяющий, по современной классификации 47 подтвержденных видов и 39 таксонов, ожидающих подтверждения.Народные названия: вильха, вольха, елоха, елха, елшина, лешинник, олешник, олех, ольшняк.',
      ),
      CardData(
        text:
        'Дрок',
        imageUrl:
        'https://treeseed.ru/pictures/product/big/10759_big.jpeg',
        descriptionText:
        'Дрок (лат. Genísta) — род растений семейства Бобовые (Fabaceae), произрастающих в Евразии и в Северной Америке.',
      ),
      CardData(
        text:
        'Ива',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=df88611a2a7fa11d7e777cc27e9862fd_l-5351135-images-thumbs&n=13',
        descriptionText:
        'И́ва (лат. Sálix) — род древесных растений семейства Ивовые (Salicaceae).В русском языке по отношению к отдельным видам ивы используется множество собственных названий — ветла́, раки́та, лоза́, лози́на, ве́рба, тальник.Широко распространённые в средней части России растения. Большинство видов ив любят влажность и селятся в сырых местах, в сухих же местах (на склонах, песках и т. п.) и на болотах растут сравнительно немногие виды. Встречается ива и в лесах, как подмесь к другим деревьям.Внешний вид ив весьма разнообразен: среди них есть высокие деревья (Ива белая, Ива ломкая, Ива козья) и кустарники (Ива прутовидная, Ива волчниковая, Ива пурпурная), иногда довольно мелкие, приземистые, стелющиеся по земле (Salix lapponica, Salix repens var. rosmarinifolia, Ива черничная); в полярных же странах и на высоких горах, в нагорных областях, растут ещё более мелкие ивы-карлики, такие как (Ива травянистая, Ива сетчатая), весьма мелкие кустарнички, не выше 2,5 сантиметров, и не превышающие мхов, среди которых они растут.Ивы — древние растения. Отпечатки их листьев попадаются в отложениях меловой формации.',
      ),
      CardData(
        text:
        'Вереск',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=8b7503a980a11b2124b08699b695ddb2_l-4120924-images-thumbs&n=13',
        descriptionText:
        'Ве́реск (лат. Calluna) — монотипный род цветковых растений семейства Вересковые. Единственный вид — Ве́реск обыкнове́нный (лат. Callúna vulgáris).Используется в качестве декоративного растения и в качестве медоноса.',
      ),
      CardData(
        text:
        'Падуб',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=4d636b5bd02b448bbac4da43c6b22512_l-5233156-images-thumbs&n=13',
        descriptionText:
        'Па́дуб, или остроли́ст (лат. Ílex) — род деревьев и кустарников семейства Падубовые (Aquifoliaceae). Садоводами падубы ценятся за декоративность блестящих кожистых листьев, тёмно-зелёных или двуцветных, и ярких привлекательных костянок, которые могут быть красного, жёлтого, белого, чёрного или оранжевого цвета. Костянки созревают осенью и хорошо сохраняются на растениях всю зиму. Наиболее распространён падуб остролистный.',
      ),
      CardData(
        text:
        'Терн',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=887c28a7a4353b74f54e5db2b746d09f_l-6335046-images-thumbs&n=13',
        descriptionText:
        'Тёрн, или Терно́вник, или Сли́ва колю́чая (лат. Prúnus spinósa) — небольшой колючий кустарник, вид рода Слива (Prunus) семейства Розовые (Rosaceae).',
      ),
      CardData(
        text:
        'Яблоня',
        imageUrl:
        'https://3kornya.ru/storage/vino/manzanasrojas-en-arbol_72593407-scaled%20(1).jpg',
        descriptionText:
        'Я́блоня (лат. Mālus) — род листопадных деревьев и кустарников семейства Розовые (Rosaceae) с шаровидными сладкими или кисло-сладкими плодами. Происходит из зон умеренного климата Северного полушария.В ранних классификациях род относили к трибе Яблоневые (Maleae) подсемейства Сливовые (Prunoideae), по современной системе на основе APG IV промежуточные ранги не поддерживаются, род включён в семейство Розовые (Rosaceae) и насчитывает 46 видов. Наиболее распространена яблоня домашняя или культурная (Malus domestica), к которой относится большинство возделываемых в мире сортов (число которых превышает 10 тысяч), также яблоня сливолистная или китайская (Malus prunifolia) и яблоня низкая (Malus pumila).Многие виды яблони выращивают в качестве декоративных растений в садах и парках, используют в полезащитном лесоразведении. Все виды — хорошие медоносы. Древесина у яблони плотная, крепкая, легко режется и хорошо полируется; пригодна для токарных и столярных изделий, мелких поделок.',
      ),
      CardData(
        text:
        'Осина',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=d0da261eb30751241cf9ec5d1e0ed0e1_l-5299374-images-thumbs&n=13',
        descriptionText:
        'Оси́на, или Оси́на обыкнове́нная, или Осина евросибирская, или То́поль дрожа́щий (лат. Pópulus trémula) — вид лиственных деревьев из рода Тополь семейства Ивовые, широко распространённый в районах с умеренным и холодным климатом Европы и Азии.',
      ),
      CardData(
        text:
        'Тополь',
        imageUrl:
        'https://million-wallpapers.com/wallpapers/4/17/15055683544110870988/pejzazh-z-derevom-b-lya-dorogi.jpg',
        descriptionText:
        'То́поль (лат. Pópulus) — род двудомных (редко однодомных) листопадных быстрорастущих деревьев семейства Ивовые (Salicaceae).Лес с преобладанием тополей называют тополёвником.',
      ),
      CardData(
        text:
        'Калина',
        imageUrl:
        'https://avatars.mds.yandex.net/i?id=cb553269fdde868a2086d3c3d258b962_l-5233844-images-thumbs&n=13',
        descriptionText:
        'Кали́на обыкнове́нная, или Калина кра́сная (лат. Vibúrnum ópulus) — листопадное древесное растение, вид рода Калина (Viburnum) семейства Калиновые (Viburnaceae). Ранее этот род относили к семейству Жимолостные (Caprifoliaceae), Адоксовые (Adoxaceae) или Бузиновые. Плоды съедобны. Кора и плоды используются в народной медицине и фармакологии. Выведены декоративные красивоцветущие сорта.',
      ),
      CardData(
        text:
        'Бузина',
        imageUrl:
        'https://i.pinimg.com/originals/99/e7/86/99e786e4a715d077c2b6f01b7e945936.jpg',
        descriptionText:
        'Бузина́[1] (лат. Sambucus) — род цветковых растений семейства Калиновые (Viburnaceae). Ранее его включали в более крупное семейство Жимолостные (Caprifoliaceae) или выделяли в самостоятельное семейство Бузиновые, либо Адоксовые (Adoxaceae), которые по современной классификации являются устаревшими синонимичными названиями семейства Калиновые. Род включает около 50 видов — 23 в статусе подтверждённых и 27 ожидающих уточнения таксономического положения. Ареал рода охватывает значительную часть Северного полушария (в основном зоны с умеренным и субтропическим климатом), а также Австралию. Некоторые виды используются как лекарственные растения; бузина (особенно красная и чёрная) в пчеловодстве используется как источник пыльцы и нектара, а также как средство для борьбы с мышами. Некоторые виды культивируют как декоративные растения.',
      ),
      CardData(
        text:
        'Тис',
        imageUrl:
        'https://images.live.vkplay.ru/user/14036205/avatar?change_time=1696861814',
        descriptionText:
        'Тис (лат. Táxus) — род растений семейства Тисовые (Taxaceae). Виды рода — медленнорастущие деревья или кустарники высотой от 1 до 20 м (обычно не более 10 м). Диаметр ствола может достигать 1,5 м. Древесину тисов на протяжении многих веков использовали для изготовления луков и копий.',
      ),
      CardData(
        text:
        'Омела',
        imageUrl:
        'https://kaliningradtv.ru/upload/news/picoriginal/image-1702901922_2183.jpg',
        descriptionText:
        'Оме́ла (лат. Viscum) — вечнозелёное кустарниковое растение, род полупаразитных кустарников. Ранее, согласно системе классификации APG II род относили к семейству Санталовые (Santalaceae). В системе классификации APG III относят к семейству Омеловые (Viscaceae). Паразитирует на очень многих древесных растениях: тополях, клёнах, соснах, ивах, берёзах, лжеакациях и на разнообразных плодовых деревьях. Поселяется на верхушке дерева или на его ветвях и разрастается зелёным, в большинстве случаев густым кустом. Имеет кормовое значение для птиц. Из плодов можно варить клей.',
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(55,53,49,1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: data.map((e) => _Card.fromData(
                e,
                onLike: (String title, bool isLiked) =>
                    _showSnackBar(context, title, isLiked),
                onTap: () => _navToDetails(context, e),
              ))
                .toList(),
          ),
        ),
      ),
    );
  }

  void _navToDetails(BuildContext context, CardData data) {
    Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => DetailsPage(data)),
    );
  }
  
  void _showSnackBar(BuildContext context, String title, bool isLiked) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(
          content:  Text(
            '$title: ${isLiked ? 'Спасибо' : 'Ок'}',
            style: TextStyle(
              color: const Color.fromRGBO(229, 215, 196, 1),
              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
            ),
          ),
        backgroundColor: const Color.fromRGBO(48, 46, 42, 1),
        duration: const Duration(seconds: 1),
      ));
    });
  }
}

part of 'home_page.dart';

typedef OnLikeCallback = void Function(String title, bool isLiked)?;

class _Card extends StatefulWidget {
  final String text;
  final String descriptionText;
  final String? imageUrl;
  final OnLikeCallback onLike;
  final VoidCallback? onTap;

  const _Card({
    required this.text,
    this.imageUrl,
    this.onLike,
    required this.descriptionText,
    this.onTap
  });

  factory _Card.fromData(
      CardData data, {
        OnLikeCallback onLike,
        VoidCallback? onTap
  }) => _Card(
    text: data.text,
    imageUrl: data.imageUrl,
    onLike: onLike,
    onTap: onTap,
    descriptionText: data.descriptionText,
  );

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
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
        child: Stack(
          children: [
            IntrinsicHeight(
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
                          widget.imageUrl ?? '',
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
                        widget.text,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 6.0,
              bottom: 6.0,
              child: GestureDetector(
                  onTap: () {
                    setState(() => isLiked = !isLiked);
                    widget.onLike?.call(widget.text, isLiked);
                  },
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: isLiked
                        ? const Icon(
                      Icons.favorite,
                      color: Color.fromRGBO(37 ,38 ,3 , 1,),
                      key: ValueKey<int>(0),
                    )
                        : const Icon(
                      Icons.favorite_border,
                      key: ValueKey<int>(1),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
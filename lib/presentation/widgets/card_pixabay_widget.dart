import 'package:flutter/material.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/infraestructure/models/pixabay_result_model.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/presentation/widgets/text_tag_widget.dart';

class CardPixabayWidget extends StatelessWidget {
  const CardPixabayWidget({
    super.key,
    required this.hit,
  });

  final Hit hit;

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: const Alignment(1, 1),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              width: double.infinity,
              height: 275,
              placeholder: const AssetImage('assets/loading.gif'),
              image: NetworkImage(
                hit.webformatUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white54,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(hit.userImageUrl),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up,
                        size: 24.0,
                        color: Colors.blue,
                      ),
                      label: Text(
                        hit.likes.toString(),
                        style: const TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w900),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        size: 24.0,
                        color: Colors.teal,
                      ),
                      label: Text(
                        hit.views.toString(),
                        style: const TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w900),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.download,
                        size: 24.0,
                        color: Colors.indigo,
                      ),
                      label: Text(
                        hit.downloads.toString(),
                        style: const TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var tag in hit.tags.split(","))
                      Flexible(child: TextTagWidget(text: tag.trim())),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

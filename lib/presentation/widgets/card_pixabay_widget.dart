import 'package:flutter/material.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/infraestructure/models/pixabay_result_model.dart';

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
              height: 225,
              placeholder: const AssetImage('assets/loading.gif'),
              image: NetworkImage(
                hit.webformatUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                    Icons.comment,
                    size: 24.0,
                    color: Colors.teal,
                  ),
                  label: Text(
                    hit.views.toString(),
                    style: const TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

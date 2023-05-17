import 'package:flutter/material.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/infraestructure/models/pixabay_result_model.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/presentation/provider/pixabay_provider.dart';
import 'package:gdsc_flutter_camp_2023_app_cinco/presentation/widgets/card_pixabay_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pixabayData = Provider.of<PixabayProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixabay'),
      ),
      body: _ListPixabayImages(pixabayData: pixabayData),
    );
  }
}

class _ListPixabayImages extends StatefulWidget {
  final PixabayProvider pixabayData;

  const _ListPixabayImages({
    required this.pixabayData,
  });

  @override
  State<_ListPixabayImages> createState() => _ListPixabayImagesState();
}

class _ListPixabayImagesState extends State<_ListPixabayImages> {
  String queryUrl = 'cat';
  final _textEditController = TextEditingController();
  final _focusNode = FocusNode();

  // This function is triggered when the clear buttion is pressed
  void _clearTextField() {
    // Clear everything in the text field
    _textEditController.clear();
    _focusNode.requestFocus();
    // Call setState to update the UI
    setState(() {
      queryUrl = 'cat';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _textEditController,
            focusNode: _focusNode,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: _textEditController.text.isEmpty
                  ? null // Show nothing if the text field is empty
                  : IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: _clearTextField,
                    ), // Show the clear button if the text field has something
              border: const OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.greenAccent),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.greenAccent),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              hintText: 'Escriba que imagen busca',
            ),
            onSubmitted: (String value) {
              setState(() {
                queryUrl = value;
              });
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: FutureBuilder<PixabayResult>(
              future: widget.pixabayData.searchImagesPixabay(queryUrl),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  PixabayResult pixabayResult = snapshot.data;
                  if (pixabayResult.hits.isNotEmpty) {
                    return ListView.separated(
                      key: ObjectKey(pixabayResult.hits[0].id),
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: pixabayResult.hits.isEmpty
                          ? 0
                          : pixabayResult.hits.length,
                      itemBuilder: (context, index) {
                        Hit hit = pixabayResult.hits[index];
                        return CardPixabayWidget(hit: hit);
                      },
                    );
                  } else {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '¡Lo sentimos!',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            'No hemos encontrado coincidencias',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }
                }
              }),
        ),
      ],
    );
  }
}

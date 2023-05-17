class PixabayResult {
  int total;
  int totalHits;
  List<Hit> hits;

  PixabayResult({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  factory PixabayResult.fromJson(Map<String, dynamic> json) => PixabayResult(
        total: json["total"],
        totalHits: json["totalHits"],
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "totalHits": totalHits,
        "hits": List<dynamic>.from(hits.map((x) => x.toJson())),
      };
}

class Hit {
  int id;
  String pageUrl;
  String type;
  String tags;
  String previewUrl;
  int previewWidth;
  int previewHeight;
  String webformatUrl;
  int webformatWidth;
  int webformatHeight;
  String largeImageUrl;
  int imageWidth;
  int imageHeight;
  int imageSize;
  int views;
  int downloads;
  int collections;
  int likes;
  int comments;
  int userId;
  String user;
  String userImageUrl;

  Hit({
    required this.id,
    required this.pageUrl,
    required this.type,
    required this.tags,
    required this.previewUrl,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatUrl,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.largeImageUrl,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.views,
    required this.downloads,
    required this.collections,
    required this.likes,
    required this.comments,
    required this.userId,
    required this.user,
    required this.userImageUrl,
  });

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        id: json["id"] ?? 0,
        pageUrl: Uri.parse(json["pageURL"]).isAbsolute
            ? json["pageURL"]
            : 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
        type: json["type"] ?? 'Sin Tipo',
        tags: json["tags"] ?? 'Sin Tags',
        previewUrl: Uri.parse(json["previewURL"]).isAbsolute
            ? json["previewURL"]
            : 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
        previewWidth: json["previewWidth"] ?? 0,
        previewHeight: json["previewHeight"] ?? 0,
        webformatUrl: Uri.parse(json["webformatURL"]).isAbsolute
            ? json["webformatURL"]
            : 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
        webformatWidth: json["webformatWidth"] ?? 0,
        webformatHeight: json["webformatHeight"] ?? 0,
        largeImageUrl: Uri.parse(json["largeImageURL"]).isAbsolute
            ? json["largeImageURL"]
            : 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
        imageWidth: json["imageWidth"] ?? 0,
        imageHeight: json["imageHeight"] ?? 0,
        imageSize: json["imageSize"] ?? 0,
        views: json["views"] ?? 0,
        downloads: json["downloads"] ?? 0,
        collections: json["collections"] ?? 0,
        likes: json["likes"] ?? 0,
        comments: json["comments"] ?? 0,
        userId: json["userId"] ?? 0,
        user: json["user"] ?? 'Sin Usuario',
        userImageUrl: Uri.parse(json["userImageURL"]).isAbsolute
            ? json["userImageURL"]
            : 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pageUrl": pageUrl,
        "type": type,
        "tags": tags,
        "previewUrl": previewUrl,
        "previewWidth": previewWidth,
        "previewHeight": previewHeight,
        "webformatUrl": webformatUrl,
        "webformatWidth": webformatWidth,
        "webformatHeight": webformatHeight,
        "largeImageUrl": largeImageUrl,
        "imageWidth": imageWidth,
        "imageHeight": imageHeight,
        "imageSize": imageSize,
        "views": views,
        "downloads": downloads,
        "collections": collections,
        "likes": likes,
        "comments": comments,
        "userId": userId,
        "user": user,
        "userImageUrl": userImageUrl,
      };
}

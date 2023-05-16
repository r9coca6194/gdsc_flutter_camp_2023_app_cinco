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
        id: json["id"] ?? -1,
        pageUrl: json["pageURL"] ??
            'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
        type: json["type"] ?? '-',
        tags: json["tags"] ?? '-',
        previewUrl: json["previewURL"] ?? '-',
        previewWidth: json["previewWidth"] ?? '-',
        previewHeight: json["previewHeight"] ?? '-',
        webformatUrl: json["webformatURL"] ,
        webformatWidth: json["webformatWidth"] ?? '-',
        webformatHeight: json["webformatHeight"] ?? '-',
        largeImageUrl: json["largeImageURL"] ??
            'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
        imageWidth: json["imageWidth"] ?? '-',
        imageHeight: json["imageHeight"] ?? '-',
        imageSize: json["imageSize"] ?? '-',
        views: json["views"] ?? '-',
        downloads: json["downloads"] ?? '-',
        collections: json["collections"] ?? '-',
        likes: json["likes"] ?? '-',
        comments: json["comments"] ?? '-',
        userId: json["userId"] ?? -1,
        user: json["user"] ?? '-',
        userImageUrl: json["userImageURL"] ??
            'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
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

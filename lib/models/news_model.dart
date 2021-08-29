import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
    NewsModel({
        this.success,
        this.result,
    });

    bool success;
    List<Result> result;

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        success: json["success"],
        result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.key,
        this.url,
        this.description,
        this.image,
        this.name,
        this.source,
    });

    String key;
    String url;
    String description;
    String image;
    String name;
    String source;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        key: json["key"],
        url: json["url"],
        description: json["description"],
        image: json["image"],
        name: json["name"],
        source: json["source"],
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "url": url,
        "description": description,
        "image": image,
        "name": name,
        "source": source,
    };
}

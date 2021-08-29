class TotalCasesModel {
  TotalCasesModel({
    this.success,
    this.result,
  });

  bool success;
  Result result;

  factory TotalCasesModel.fromJson(Map<String, dynamic> json) =>
      TotalCasesModel(
        success: json["success"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": result.toJson(),
      };

  @override
  String toString() {
    return "succes: $success result: $result";
  }
}

class Result {
  Result({
    this.totalDeaths,
    this.totalCases,
    this.totalRecovered,
  });

  String totalDeaths;
  String totalCases;
  String totalRecovered;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        totalDeaths: json["totalDeaths"],
        totalCases: json["totalCases"],
        totalRecovered: json["totalRecovered"],
      );

  Map<String, dynamic> toJson() => {
        "totalDeaths": totalDeaths,
        "totalCases": totalCases,
        "totalRecovered": totalRecovered,
      };
  

}

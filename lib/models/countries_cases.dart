class CountriesCasesModel {
  CountriesCasesModel({
    this.success,
    this.result,
  });

  bool success;
  List<CasesModel> result;

  factory CountriesCasesModel.fromJson(Map<String, dynamic> json) =>
      CountriesCasesModel(
        success: json["success"],
        result:
            List<CasesModel>.from(json["result"].map((x) => CasesModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class CasesModel {
  CasesModel({
    this.country,
    this.totalCases,
    this.newCases,
    this.totalDeaths,
    this.newDeaths,
    this.totalRecovered,
    this.activeCases,
  });

  String country;
  String totalCases;
  String newCases;
  String totalDeaths;
  String newDeaths;
  String totalRecovered;
  String activeCases;

  factory CasesModel.fromJson(Map<String, dynamic> json) => CasesModel(
        country: json["country"],
        totalCases: json["totalCases"],
        newCases: json["newCases"],
        totalDeaths: json["totalDeaths"],
        newDeaths: json["newDeaths"],
        totalRecovered: json["totalRecovered"],
        activeCases: json["activeCases"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "totalCases": totalCases,
        "newCases": newCases,
        "totalDeaths": totalDeaths,
        "newDeaths": newDeaths,
        "totalRecovered": totalRecovered,
        "activeCases": activeCases,
      };
}

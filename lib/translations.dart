import 'package:covid_19/languages/eng.dart';
import 'package:covid_19/languages/tr.dart';
import 'package:get/get.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'eng': eng,
        'tr': tr,
      };
}

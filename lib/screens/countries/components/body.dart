import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/countries/components/cases_card.dart';
import 'package:covid_19/screens/countries/components/cases_map.dart';
import 'package:covid_19/screens/countries/components/dropdown_button.dart'; 
import 'package:flutter/material.dart'; 

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            CountriesDropdownButton(),
            CasesCard(),
            SizedBox(height: kDefaultPadding / 2),
            CasesMap()
          ],
        ),
      ),
    );
  }
}

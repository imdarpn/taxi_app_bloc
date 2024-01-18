import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';

import '../../../utils/logger_util.dart';

class CommonCountryDialog {
  /// country dialog
  static openCountryDialog({
    required BuildContext context,
    required Country selectedCountry,
    required void Function(Country) onCountryChanged,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return Theme(
          data: Theme.of(context).copyWith(
            listTileTheme: const ListTileThemeData(),
          ),
          child: CountryPickerDialog(
            languageCode: "en_US",
            searchText: "Search country",
            countryList: countries,
            onCountryChanged: (Country country) {
              onCountryChanged.call(country);
            },
            selectedCountry: selectedCountry,
            filteredCountries: countries,
          ),
        );
      },
    );
  }
}

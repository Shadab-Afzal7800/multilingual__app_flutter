import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:multilingual_adhyatmic_solutions/provider/language_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appTitle),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(localizations.welcomeMessage),
            Text(
              localizations.timeTravelPragraph,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showLanguageDialog(context),
              child: Text(localizations.changeLanguage),
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final languageProvider =
        Provider.of<LanguageProvider>(context, listen: false);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(localizations.languageSelection),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(localizations.englishLanguage),
                onTap: () {
                  languageProvider.changeLocale('en');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(localizations.hindiLanguage),
                onTap: () {
                  languageProvider.changeLocale('hi');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(localizations.urduLanguage),
                onTap: () {
                  languageProvider.changeLocale('ur');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

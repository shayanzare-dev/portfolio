import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'presentation/screens/home/home.dart';
import 'resource/theme/theme.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    
        title: 'Shayan Zare Portfolio',
        theme: portfolioTheme,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: HomeScreen(),
      );
}

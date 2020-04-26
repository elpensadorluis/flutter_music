import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musicplayer/src/models/audioplayer_model.dart';
import 'package:musicplayer/src/pages/music_player_page.dart';
import 'package:musicplayer/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(
      MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new AudioPlayerModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: miTema,
        home: MusicPlayerPage(),
      ),
    );
  }
}

import 'package:campus_tracker/src/bloc/first_time.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:routemaster/routemaster.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:path_provider/path_provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'package:campus_tracker/src/pages/intro/intro.dart';
import 'package:campus_tracker/src/bloc/notice_bloc.dart';
import 'package:campus_tracker/src/streams/notice_stream.dart';
import 'package:campus_tracker/src/pages/notices/notices.dart';
import 'package:campus_tracker/src/pages/tests/tests.dart';
import 'package:campus_tracker/src/services/notice_service/notice_service.dart';
import 'package:campus_tracker/src/services/test_service/test_service.dart';

IO.Socket initSocket() {
  print('creating socket');
  final socket = IO.io(
    'http://10.0.2.2:1337/',
    IO.OptionBuilder()
        .setTransports(['websocket'])
        .disableAutoConnect()
        .build(),
  );

  socket.onError((data) {
    print('error: $data');
  });

  socket.onConnect((_) {
    print('connected');
  });

  return socket.connect();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'notice_notification',
        channelName: 'Notice Notification',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: Color(0xFF9D50DD),
        ledColor: Colors.white,
        importance: NotificationImportance.High,
      ),
    ],
  );

  final dio = Dio();

  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());

  HydratedBlocOverrides.runZoned(
    storage: storage,
    () => runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<NoticeClient>(create: (_) => NoticeClient(dio)),
          RepositoryProvider<TestClient>(create: (_) => TestClient(dio)),
          RepositoryProvider<IO.Socket>(
            create: (_) => initSocket(),
          ),
          RepositoryProvider<NoticeStream>(
            create: (context) => NoticeStream(
              RepositoryProvider.of<IO.Socket>(context),
              RepositoryProvider.of<NoticeClient>(context),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  NoticeCubit(RepositoryProvider.of<IO.Socket>(context)),
              lazy: false,
            ),
            BlocProvider(
              create: (context) => FirstTimeCubit(),
            ),
          ],
          child: const MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (context) => RouteMap(
          routes: {
            '/': (routeData) => BlocProvider.of<FirstTimeCubit>(context).state
                ? const MaterialPage(
                    child: IntroPage(),
                  )
                : const Redirect('/home'),
            '/home': (routeData) => const IndexedPage(
                  child: MyHomePage(),
                  paths: ['notices', 'tests'],
                  backBehavior: TabBackBehavior.none,
                ),
            '/home/tests': (routeData) => const MaterialPage(
                  child: TestPage(),
                ),
            '/home/notices': (routeData) => const MaterialPage(
                  child: NoticePage(),
                ),
          },
        ),
      ),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}

// adb reverse tcp:1337 tcp:1337
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pageState = IndexedPage.of(context);
    final selectedIndex = pageState.index;
    final stack = pageState.stacks[selectedIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Bal"),
      ),
      body: PageStackNavigator(
        key: ValueKey(selectedIndex),
        stack: stack,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            pageState.index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notices",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Tests",
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

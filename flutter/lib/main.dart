import 'package:campus_tracker/src/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:routemaster/routemaster.dart';
import 'package:path_provider/path_provider.dart';

import 'package:campus_tracker/src/bloc/first_time.dart';
import 'package:campus_tracker/src/services/notification/notification_service.dart';
import 'package:campus_tracker/src/services/socket/socket_service.dart';
import 'package:campus_tracker/src/pages/intro/intro.dart';
import 'package:campus_tracker/src/bloc/notice_bloc.dart';
import 'package:campus_tracker/src/pages/notices/notices.dart';
import 'package:campus_tracker/src/pages/tests/tests.dart';
import 'package:campus_tracker/src/services/notice_service/notice_service.dart';
import 'package:campus_tracker/src/services/test_service/test_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeNotifications();

  final dio = Dio();

  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());
  await Hive.initFlutter();
  await Hive.openBox('notice_notified');

  HydratedBlocOverrides.runZoned(
    storage: storage,
    () => runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<NoticeClient>(
              create: (_) => NoticeClient(dio, baseUrl: AppConfig.apiUrl)),
          RepositoryProvider<TestClient>(
              create: (_) => TestClient(dio, baseUrl: AppConfig.apiUrl)),
          RepositoryProvider<SocketService>(
            create: (_) => SocketService(),
            lazy: false,
          ),
          // RepositoryProvider<NoticeStream>(
          //   create: (context) => NoticeStream(
          //     RepositoryProvider.of<SocketService>(context),
          //     RepositoryProvider.of<NoticeClient>(context),
          //   ),
          // ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    NoticeCubit(RepositoryProvider.of<SocketService>(context))),
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
        backgroundColor: Colors.white,
      ),
      scrollBehavior: const CupertinoScrollBehavior(),
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
      body: PageStackNavigator(
        key: ValueKey(selectedIndex),
        stack: stack,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 28,
        backgroundColor: Colors.white,
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
    );
  }
}

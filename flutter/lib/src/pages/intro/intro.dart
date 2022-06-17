import 'package:campus_tracker/src/bloc/first_time.dart';
import 'package:campus_tracker/src/services/notification/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routemaster/routemaster.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 28.0,
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Greetings!',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => getStarted(context),
                child: Text('GET STARTED'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).cardColor,
    );
  }

  void getStarted(BuildContext context) async {
    await askForPermission();
    BlocProvider.of<FirstTimeCubit>(context).getStarted();
    Routemaster.of(context).replace('/home');
  }
}

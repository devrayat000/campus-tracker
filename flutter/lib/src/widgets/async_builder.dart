import 'package:flutter/material.dart';

class AsyncBuilder<T> extends StatelessWidget {
  final T? initialData;
  final Widget Function(BuildContext, T) successBuilder;
  final Widget Function(BuildContext, Object?) errorBuilder;
  final Widget Function(BuildContext) loadingBuilder;

  const AsyncBuilder({
    Key? key,
    this.initialData,
    required this.successBuilder,
    required this.errorBuilder,
    required this.loadingBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      initialData: initialData,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return errorBuilder(context, snapshot.error);
        } else {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return loadingBuilder(context);
            case ConnectionState.done:
              return successBuilder(context, snapshot.data!);
            default:
              return loadingBuilder(context);
          }
        }
      },
    );
  }
}

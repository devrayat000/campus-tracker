import 'package:campus_tracker/src/bloc/notice_bloc.dart';
import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:campus_tracker/src/streams/notice_stream.dart';
import 'package:campus_tracker/src/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState
    extends State<NoticePage> /*with AutomaticKeepAliveClientMixin */ {
  late final NoticeCubit noticeCubit;
  late final Stream<Set<NoticeRaw>> noticeStream;
  late final ScrollController _scrollController;

  // @override
  // final wantKeepAlive = false;

  @override
  void initState() {
    super.initState();
    print('noti page initialized');
    noticeCubit = RepositoryProvider.of<NoticeCubit>(context);
    noticeCubit.init();
    noticeStream = noticeCubit.stream;

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    noticeCubit.dispose();
    _scrollController.dispose();
    print('noti page disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Notice"),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 32,
          color: Colors.blueGrey[900],
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
      ),
      body: StreamBuilder<Set<NoticeRaw>>(
        stream: noticeStream,
        builder: (context, snapshot) {
          print(snapshot.data);
          print(snapshot.hasData);
          print(snapshot.connectionState);

          if (snapshot.hasData) {
            final data = snapshot.data!;
            return RefreshIndicator(
              onRefresh: noticeCubit.reload,
              child: CupertinoScrollbar(
                child: ListView.builder(
                  padding: const EdgeInsets.all(4.0),
                  itemCount: data.length,
                  controller: _scrollController,
                  // physics: BouncingScrollPhysics(),
                  addAutomaticKeepAlives: false,
                  itemBuilder: (context, index) {
                    final notice = data.elementAt(index);

                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Material(
                        elevation: 3,
                        color: noticeColors[index % noticeColors.length],
                        borderRadius: BorderRadius.circular(24.0),
                        child: ListTile(
                          key: ValueKey('notice-${notice.id}'),
                          title: Text(notice.title),
                          subtitle: Text(notice.details),
                          style: ListTileStyle.list,
                          textColor: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

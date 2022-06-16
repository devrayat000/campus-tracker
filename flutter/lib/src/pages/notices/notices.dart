import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:campus_tracker/src/streams/notice_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  late final NoticeStream noticeStream;

  @override
  void initState() {
    super.initState();
    noticeStream = RepositoryProvider.of<NoticeStream>(context);
    noticeStream.init();
  }

  @override
  void dispose() {
    noticeStream.dispose();
    super.dispose();
  }

  final _list = <NoticeRaw>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<NoticeRaw>(
        stream: noticeStream.listen(),
        builder: (context, snapshot) {
          print(snapshot.data);
          print(snapshot.hasData);
          print(snapshot.connectionState);

          if (snapshot.hasData) {
            final data = snapshot.data!;
            _list.add(data);

            return ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                final notice = _list[index];

                return ListTile(
                  key: ValueKey('notice-${notice.id}'),
                  title: Text(notice.title),
                );
              },
            );
          }
          return Center(
            child: Text('NNN'),
          );
        },
      ),
    );
  }
}

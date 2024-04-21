import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    Iterable json = jsonDecode(response.body);
    return List<Post>.from(json.map((model) => Post.fromJson(model)));
  } else {
    throw Exception('Failed to load posts');
  }
});

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod Posts Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Post>> posts = ref.watch(postsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: posts.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (postList) {
          return ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(postList[index].title),
                subtitle: Text(postList[index].body),
              );
            },
          );
        },
      ),
    );
  }
}

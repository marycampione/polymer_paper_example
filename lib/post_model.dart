library post_model;

import 'package:polymer/polymer.dart';

class Post extends Observable {
  final int uid;
  final String text;
  final String username;
  final String avatar;
  @observable bool favorite;

  Post(this.uid, this.text, this.username, this.avatar, this.favorite);

  factory Post.fromJson(Map json) {
    return new Post(json['uid'], json['text'], json['username'],
        json['avatar'], json['favorite']);
  }

  toString() => username;
}

import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:template_binding/template_binding.dart';

@CustomTag('post-list')
class PostList extends PolymerElement {
  
  @observable List<List> myPosts = toObservable([]);

  @published String show;
  
  PostList.created() : super.created() {
    var list = document.querySelector('post-list');
    var tabs = document.querySelector('paper-tabs');

    tabs.addEventListener('core-select', (e) {
      list.show = tabs.selected;
    });
  }
  
  handleFavorite(event, detail, sender) {
    var post = nodeBind(sender).templateInstance.model['post'];
    $['service'].setFavorite(post.uid, post.favorite);
  }
}

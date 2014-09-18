import 'package:polymer/polymer.dart';

import 'post_model.dart';

@CustomTag('post-service')
class PostService extends PolymerElement {

  @published List<Post> posts;

  PostService.created() : super.created() {
  }
    
  List postsLoaded(e, detail, node) {
    posts = toObservable(detail['response']
        .map((s) => new Post.fromJson(s)).toList());
    return posts;
  }
  
  /**
   * If this was a real service, this
   * method would do something useful,
   * like update a database.
   */
  setFavorite(uid, isFavorite) {
    // no service backend, just log the change
    print('Favorite changed: ${uid}, now: ${isFavorite}');
  }
}

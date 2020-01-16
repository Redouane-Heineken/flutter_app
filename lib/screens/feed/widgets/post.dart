class Post {
  final String name;
  final String picture;
  

  Post({this.name, this.picture});

  factory Post.fromJson(Map<String, dynamic> user) => Post(
      name: user['name'],
      picture: user['picture']
    );
  
}



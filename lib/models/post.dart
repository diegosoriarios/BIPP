class Post {
  String id;
  String createdAt;
  String name;
  String image;
  String tag;
  String content;

  Post({
    this.id,
    this.createdAt,
    this.name,
    this.image,
    this.tag,
    this.content
  });

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    name = json['name'];
    image = json['image'];
    tag = json['tag'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['name'] = this.name;
    data['image'] = this.image;
    data['tag'] = this.tag;
    data['content'] = this.content;
    return data;
  }
}
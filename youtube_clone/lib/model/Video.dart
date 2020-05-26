class Video {
  String id;
  String title;
  String description;
  String image;
  String channel;

  /** params opcionais*/
  Video({this.id, this.title, this.description, this.image, this.channel});

  /* static converteJson(Map<String, dynamic> json) {
    return Video(
        id: json['id']['videoId'],
        title: json['snippet']['title'],
        description: json['snippet']['description'],
        image: json['snippet']['thumbnails']['high']['url'],
        channel: json['snippet']['channelId']
    );
  }*/


  /** retorna uma unica instancia **/
  factory Video.forJson(Map<String, dynamic> json) {
    return Video(
        id: json['id']['videoId'],
        title: json['snippet']['title'],
        description: json['snippet']['description'],
        image: json['snippet']['thumbnails']['high']['url'],
        channel: json['snippet']['channelId']);
  }
}

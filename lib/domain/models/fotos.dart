class Fotos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String icono;

  Fotos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.icono,
      });

  factory Fotos.desdeJson(Map<String, dynamic> json) {
    return Fotos(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        icono: json['thumbnailUrl']
        );
  }
}


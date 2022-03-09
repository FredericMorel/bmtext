class Story {
  final String? _question;
  final String? _choix1;
  final String? _choix2;

  Story(this._question, this._choix1, this._choix2);

  String? get choix2 => _choix2;
  String? get choix1 => _choix1;
  String? get question => _question;
}

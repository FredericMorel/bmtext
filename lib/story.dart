class Story {
  String? _question;
  String? _choix1;
  String? _choix2;

  Story(this._question, this._choix1, this._choix2);

  String? get choix2 => _choix2;
  String? get choix1 => _choix1;
  String? get question => _question;

  
}

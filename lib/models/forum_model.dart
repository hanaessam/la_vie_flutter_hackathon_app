class Forum {
  final String _title;
  final String _description;
 final String _imageUrl;

  Forum(this._title, this._description, this._imageUrl);

  String get imageUrl => _imageUrl;

  String get description => _description;

  String get title => _title;
}
class User {
  final String _firstName;
  final String _lastName;
  final String _imageUrl;
  User(this._firstName, this._lastName, this._imageUrl);

  String get imageUrl => _imageUrl;

  String get lastName => _lastName;

  String get firstName => _firstName;
}
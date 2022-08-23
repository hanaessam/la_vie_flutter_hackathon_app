class User {
  final String _firstName;
  final String _lastName;
  final String _imageUrl;
  final String _userPoints;
  User(this._firstName, this._lastName, this._imageUrl, this._userPoints);

  String get imageUrl => _imageUrl;

  String get lastName => _lastName;

  String get firstName => _firstName;

  String get userPoints => _userPoints;
}
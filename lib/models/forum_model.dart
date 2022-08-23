

class Forum {
  final String _title;
  final String _description;
 final String _imageUrl;
 final int _ForumLikes;
 final int _ForumComments;
 final UserForum _userForum;

  Forum(this._title, this._description, this._imageUrl, this._ForumLikes, this._ForumComments, this._userForum);

  String get imageUrl => _imageUrl;

  String get description => _description;

  String get title => _title;

  int get ForumComments => _ForumComments;

  int get ForumLikes => _ForumLikes;

  UserForum get userForum => _userForum;
}

class UserForum {
 final String _firstName;
 final String _lastName;
 final String _imageUrl;

 UserForum(this._firstName, this._lastName, this._imageUrl);

 String get imageUrl => _imageUrl;

  String get lastName => _lastName;

  String get firstName => _firstName;
}
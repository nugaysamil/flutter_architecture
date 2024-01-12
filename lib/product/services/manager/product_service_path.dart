// Project service path
// ignore: public_member_api_docs

// ignore: public_member_api_docs
enum ProductServicePath {
  userV1('user'),
  posts('posts'),

  usersV2('v2/users');

  final String value;
  // ignore: sort_constructors_first
  const ProductServicePath(this.value);

  // withQuery is add query to path

  // Example users/123
  String withQuery(String value) {
    return '${this.value}/$value';
  }
}

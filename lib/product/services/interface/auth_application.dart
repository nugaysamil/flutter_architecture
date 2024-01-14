// ignore_for_file: public_member_api_docs, one_member_abstracts, eol_at_end_of_file

import 'package:gen/gen.dart';

abstract class AuthenticationOperation {
  Future<List<User>> users();
}

part '_auth.dart';
part '_search.dart';

///NeteaseMusicAPI alias
const NeteaseMusicAPI NEM = const NeteaseMusicAPI();

class NeteaseMusicAPI {
  const NeteaseMusicAPI();
  final _Auth auth = const _Auth();
  final _Search search = const _Search();
}

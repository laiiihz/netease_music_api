part of 'netease_music_api.dart';

class _Auth {
  const _Auth();
  final _Login login = const _Login();
}

class _Login {
  const _Login();

  ///  说明 : 登录有三个接口,建议使用`encodeURIComponent`对密码编码或者使用`POST`请求,避免某些特殊字符无法解析,如`#`(`#`在url中会被识别为hash,而不是query)
  ///
  ///#### 1. 手机登录
  ///
  ///**必选参数 :**
  ///`phone`: 手机号码
  ///
  ///`password`: 密码
  ///
  ///
  ///
  ///**可选参数 :**
  ///`countrycode`: 国家码，用于国外手机号登录，例如美国传入：`1`
  ///
  ///`md5_password`: md5加密后的密码,传入后 `password` 将失效
  ///
  ///**接口地址 :** `/login/cellphone`
  ///
  ///**调用例子 :** `/login/cellphone?phone=xxx&password=yyy` `/login/cellphone?phone=xxx&md5_password=yyy`
  final String cellPhone = '/login/cellphone';
}

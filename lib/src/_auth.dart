part of 'netease_music_api.dart';

class _Auth {
  const _Auth();
  final _Login login = const _Login();
}

///## Login
///完成登录后 , 会在浏览器保存一个 Cookies 用作登录凭证 , 大部分 API 都需要用到这个
///Cookies,非跨域情况请求会自动带上 Cookies,跨域情况参考`调用前须知`
///
///v3.30.0后支持手动传入cookie,登录接口返回内容新增 `cookie` 字段,保存到本地后,get请求带上`?cookie=xxx` (先使用 `encodeURIComponent()` 编码 cookie 值) 或者 post请求body带上 `cookie` 即可,如:`/user/cloud?cookie=xxx` 或者
///```
///{
///    ...,
///    cookie:"xxx"
///}
///```
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

  ///**必选参数 :**
  ///
  ///`email`: 163 网易邮箱
  ///
  ///`password`: 密码
  ///
  ///**可选参数 :**
  ///
  ///`md5_password`: md5加密后的密码,传入后 `password` 将失效
  ///
  ///**接口地址 :** `/login`
  ///
  ///**调用例子 :** `/login?email=xxx@163.com&password=yyy`
  ///
  final String mail = '/login';

  ///  ### 刷新登录
  ///
  ///说明 : 调用此接口 , 可刷新登录状态
  final String refresh = '/login/refresh';

  ///### 发送验证码
  ///说明 : 调用此接口 ,传入手机号码, 可发送验证码
  ///
  ///**必选参数 :** `phone`: 手机号码
  ///
  ///**可选参数 :**
  ///`ctcode`:  国家区号,默认86即中国
  ///
  ///**接口地址 :** `/captcha/sent`
  ///
  ///**调用例子 :** `/captcha/sent?phone=13xxx`
  final String smsCode = '/captcha/sent';

  ///### 验证验证码
  ///
  ///说明 : 调用此接口 ,传入手机号码和验证码, 可校验验证码是否正确
  ///
  ///**必选参数 :** `phone`: 手机号码
  ///
  ///`captcha`: 验证码
  ///
  ///**可选参数 :**
  ///
  ///`ctcode`:  国家区号,默认86即中国
  ///
  ///**接口地址 :** `/captcha/verify`
  ///
  ///**调用例子 :** `/captcha/verify?phone=13xxx&captcha=1597`
  final String verifySmsCode = '/captcha/verify';

  ///### 注册(修改密码)
  ///
  ///说明 : 调用此接口 ,传入手机号码和验证码,密码,昵称, 可注册网易云音乐账号(同时可修改密码)
  ///
  ///**必选参数 :**
  ///
  ///`captcha`: 验证码
  ///
  ///`phone` :  手机号码
  ///
  ///`password`: 密码
  ///
  ///`nickname`: 昵称
  ///
  ///**可选参数 :**
  ///
  ///`countrycode`: 国家码，用于国外手机号，例如美国传入：`1` ,默认86即中国
  ///
  ///**接口地址 :** `/register/cellphone`
  ///
  ///**调用例子 :** `/register/cellphone?phone=13xxx&password=xxxxx&captcha=1234&nickname=binary1345`
  final String register = '/register/cellphone';

  ///### 检测手机号码是否已注册
  ///说明 : 调用此接口 ,可检测手机号码是否已注册
  ///**必选参数 :**
  ///`phone` :  手机号码
  ///
  ///**可选参数 :**
  ///`countrycode`: 国家码，用于国外手机号，例如美国传入：`1` ,默认86即中国
  ///
  ///**接口地址 :** `/cellphone/existence/check`
  ///
  ///**调用例子 :** `/cellphone/existence/check?phone=13xxx`
  final String checkRegister = '/cellphone/existence/check';

  ///### 初始化昵称
  ///说明 : 刚注册的账号(需登录),调用此接口 ,可初始化昵称
  ///**必选参数 :**
  ///`nickname` :  昵称
  ///
  ///**接口地址 :** `/activate/init/profile`
  ///
  ///**调用例子 :** `/activate/init/profile?nickname=testUser2019`
  final String initNickname = '/activate/init/profile';
}

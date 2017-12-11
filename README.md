# UUID

## identifierForVendor
* https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor
* **同じデバイス上で、同じアプリベンダーのアプリ** で一意となる文字列
* サーバ側でデバイス情報を管理したい場合など

## NSUUID
* https://developer.apple.com/documentation/foundation/nsuuid
* 生成される毎に変わる文字列
* クライアントからサーバにリクエストする際、任意のIDが必要となる場合など


```objc
// 何回呼び出しても変わらない
self.uideviceLabel.text = [[UIDevice currentDevice].identifierForVendor UUIDString];
// 生成される毎に変わる
self.nsuuidLabel.text = [[NSUUID UUID] UUIDString];
```

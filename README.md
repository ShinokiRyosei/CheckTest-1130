## CheckTest-1130

# Answer
1. add `UITextFieldDelegate` as `ViewController`'s superclass
2. use if let statement in order to check if `userDefaults.string(forKey:)` and `textField.text` is nil
3. add `UITextFieldDelegate` method `textFieldShouldReturn(_ textField: UITextField) -> Bool` and return true
4. add `textField.resignFirstResponder()` in `extFieldShouldReturn(_ textField: UITextField) -> Bool`
5. add `@IBOutlet` and `@IBAction` association with `Main.storyboard`
6. change `let userDefaults: UserDefaults!` to `let userDefaults: UserDefaults = UserDefaults.standard`

# 答え
1. `ViewController`に`UITextFieldDelegate`を継承
2. `if let`文を使って、`userDefaults.string(forKey:)`と`textField.text`のnilをチェック
3. `textFieldShouldReturn(_ textField: UITextField) -> Bool`という`UITextFieldDelegate`のメソッドを追加し、trueを返す
4. `textFieldShouldReturn(_ textField: UITextField) -> Bool`に`textField.resignFirstResponder()`を追加
5. `@IBOutlet`と`@IBAction`を関連付け
6. `let userDefaults: UserDefaults!`を`let userDefaults: UserDefaults = UserDefaults.standard`に変更

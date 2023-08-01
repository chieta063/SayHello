import XCTest

final class SayHelloUITests: XCTestCase {
  override func setUpWithError() throws {
    continueAfterFailure = false
  }

  override func tearDownWithError() throws {}

  func test_名前入力後に送信ボタンを押したらNameTextが表示されていること() throws {
    let app = XCUIApplication()
    app.launch()
    sleep(3)
    let nameField = app.textFields["NameField"]
    nameField.tap()
    sleep(1)
    nameField.typeText("John")
    let sendButton = app.buttons["SendButton"]
    sendButton.tap()
    let nameText = app.staticTexts["NameText"]
    XCTAssert(nameText.exists)
  }
  
  func test_テキストが表示されている状態でテキスト編集をしたらテキストが非表示になること() throws {
    let app = XCUIApplication()
    app.launch()
    sleep(3)
    let nameField = app.textFields["NameField"]
    nameField.tap()
    sleep(1)
    nameField.typeText("John")
    let sendButton = app.buttons["SendButton"]
    sendButton.tap()
    let nameText = app.staticTexts["NameText"]
    nameField.tap()
    sleep(1)
    nameField.typeText("hoge")
    XCTAssert(!nameText.exists)
  }
}

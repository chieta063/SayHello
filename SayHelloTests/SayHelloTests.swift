//
//  SayHelloTests.swift
//  SayHelloTests
//
//  Created by 阿部 紘明 on 2023/08/01.
//

import XCTest
@testable import SayHello

final class SayHelloTests: XCTestCase {
  func test_sayHello実行後に意図した文言が返ってくること() {
    let component = SayHello()
    let text = component.sayHello(name: "John")
    XCTAssert(text == "Hello, John")
  }
}

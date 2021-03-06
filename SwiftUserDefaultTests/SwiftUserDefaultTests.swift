//
//  SwiftUserDefaultTests.swift
//  SwiftUserDefaultTests
//
//  Created by Edmond on 19/03/2560 BE.
//  Copyright © 2560 BE Edmond. All rights reserved.
//

import XCTest
@testable import SwiftUserDefault


struct TestUserDefault {
    static let stringTest = UserDefaultsItem<String>("stringTest")
    static let boolTest = UserDefaultsItem<Bool>("boolTest")
    static let intTest = UserDefaultsItem<Int>("intTest")
    static let floatTest = UserDefaultsItem<Float>("floatTest")
    static let doubleTest = UserDefaultsItem<Double>("doubleTest")
    static let dataTest = UserDefaultsItem<Data>("dataTest")
    static let dateTest = UserDefaultsItem<Date>("dateTest")
    static let intArrayTest = UserDefaultsItem<[Int]>("intArrayTest")
    static let stringArrayTest = UserDefaultsItem<[String]>("stringArrayTest")
    static let dataArrayTest = UserDefaultsItem<[Data]>("dataArrayTest")
    static let dictionary1Test = UserDefaultsItem<[String : Int]>("dictionary<String : Int>Testionary")
    static let dictionary2Test = UserDefaultsItem<[String : String]>("dictionary<String : String>Testionary")
    static let dictionary3Test = UserDefaultsItem<[String : Date]>("dictionary<String : Date>Testionary")
}

struct TestResult {
    static let stringValue: String = "SwiftStringTest"
    static let boolValue: Bool = true
    static let intValue: Int = 123456
    static let floatValue: Float = 123456.1234
    static let doubleValue: Double = 123456.12345678
    static let dataValue: Data = "SwiftDataTest".data(using: .utf8, allowLossyConversion: true)!
    static let dateValue: Date = Date(timeIntervalSinceNow: 10000)
    static let intArrayValue: [Int] = [1, 2, 3, 4, 5]
    static let stringArrayValue: [String] = ["1", "2", "3"]
    static let dataArrayValue: [Data] = [TestResult.dataValue, TestResult.dataValue, TestResult.dataValue]
    static let dictionary1Value = ["one" : 1, "two" : 2, "three" : 3]
    static let dictionary2Value = ["one" : "1", "two" : "2"]
    static let dictionary3Value = ["time" : TestResult.dateValue, "time2" : TestResult.dateValue]
}


class SwiftUserDefaultTests: XCTestCase {

    override func setUp() {
        super.setUp()

        TestUserDefault.stringTest.value = TestResult.stringValue
        XCTAssert(true, "test set \(TestUserDefault.stringTest) ok")

        TestUserDefault.boolTest.value = TestResult.boolValue
        XCTAssert(true, "test set \(TestUserDefault.boolTest) ok")

        TestUserDefault.intTest.value = TestResult.intValue
        XCTAssert(true, "test set \(TestUserDefault.intTest) ok")

        TestUserDefault.floatTest.value = TestResult.floatValue
        XCTAssert(true, "test set \(TestUserDefault.floatTest) ok")

        TestUserDefault.doubleTest.value = TestResult.doubleValue
        XCTAssert(true, "test set \(TestUserDefault.doubleTest) ok")

        TestUserDefault.dataTest.value = TestResult.dataValue
        XCTAssert(true, "test set \(TestUserDefault.dataTest) ok")

        TestUserDefault.dateTest.value = TestResult.dateValue
        XCTAssert(true, "test set \(TestUserDefault.dateTest) ok")

        TestUserDefault.intArrayTest.value = TestResult.intArrayValue
        XCTAssert(true, "test set \(TestUserDefault.intArrayTest) ok")

        TestUserDefault.stringArrayTest.value = TestResult.stringArrayValue
        XCTAssert(true, "test set \(TestUserDefault.stringArrayTest) ok")

        TestUserDefault.dataArrayTest.value = TestResult.dataArrayValue
        XCTAssert(true, "test set \(TestUserDefault.dataArrayTest) ok")

        TestUserDefault.dictionary1Test.value = TestResult.dictionary1Value
        XCTAssert(true, "test set \(TestUserDefault.dictionary1Test) ok")

        TestUserDefault.dictionary2Test.value = TestResult.dictionary2Value
        XCTAssert(true, "test set \(TestUserDefault.dictionary2Test) ok")

        TestUserDefault.dictionary3Test.value = TestResult.dictionary3Value
        XCTAssert(true, "test set \(TestUserDefault.dictionary3Test) ok")

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGetStringValue() {
        if let value = TestUserDefault.stringTest.value {
            XCTAssert(value == TestResult.stringValue, "test get \(TestUserDefault.stringTest) ok")
        }
    }

    func testGetBoolValue() {
        if let value = TestUserDefault.boolTest.value {
            XCTAssert(value == TestResult.boolValue, "test get \(TestUserDefault.boolTest) ok")
        }
    }

    func testGetIntValue() {
        if let value = TestUserDefault.intTest.value {
            XCTAssert(value == TestResult.intValue, "test get \(TestUserDefault.intTest) ok")
        }
    }

    func testGetFloatArr() {
        if let value = TestUserDefault.floatTest.value {
            XCTAssert(value == TestResult.floatValue, "test get \(TestUserDefault.floatTest) ok")
        }
    }

    func testGetDoubleValue() {
        if let value = TestUserDefault.doubleTest.value {
            XCTAssert(value == TestResult.doubleValue, "test get \(TestUserDefault.doubleTest) ok")
        }
    }

    func testGetDataValue() {
        if let value = TestUserDefault.dataTest.value {
            XCTAssert(value == TestResult.dataValue, "test get \(TestUserDefault.dataTest) ok")
        }
    }

    func testGetDateValue() {
        if let value = TestUserDefault.dateTest.value {
            XCTAssert(value == TestResult.dateValue, "test get \(TestUserDefault.dateTest) ok")
        }
    }

    func testGetIntArrayValue() {
        if let value = TestUserDefault.intArrayTest.value {
            XCTAssert(value == TestResult.intArrayValue, "test get \(TestUserDefault.intArrayTest) ok")
        }
    }

    func testGetStringArrValue() {
        if let value = TestUserDefault.stringArrayTest.value {
            XCTAssert(value == TestResult.stringArrayValue, "test get \(TestUserDefault.stringArrayTest) ok")
        }
    }

    func testGetDataArrValue() {
        if let value = TestUserDefault.dataArrayTest.value {
            XCTAssert(value == TestResult.dataArrayValue, "test get \(TestUserDefault.dataArrayTest) ok")
        }
    }

    func testGetDictionary1Value() {
        if let value = TestUserDefault.dictionary1Test.value {
            XCTAssert(value == TestResult.dictionary1Value, "test get \(TestUserDefault.dictionary1Test) ok")
        }
    }

    func testGetDictionary2Value() {
        if let value = TestUserDefault.dictionary2Test.value {
            XCTAssert(value == TestResult.dictionary2Value, "test get \(TestUserDefault.dictionary2Test) ok")
        }
    }

    func testGetDictionary3Value() {
        if let value = TestUserDefault.dictionary3Test.value {
            XCTAssert(value == TestResult.dictionary3Value, "test get \(TestUserDefault.dictionary3Test) ok")
        }
    }
}

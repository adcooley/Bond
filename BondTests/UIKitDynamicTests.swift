//
//  UIKitDynamicTests.swift
//  Bond
//
//  Created by Srdan Rasic on 26/02/15.
//  Copyright (c) 2015 Bond. All rights reserved.
//

import UIKit
import XCTest
import Bond

class UIKitDynamicTests: XCTestCase {
  func testUISliderDynamic() {
    var dynamicDriver = Dynamic<Float>(0)
    let slider = UISlider()
    
    slider.value = 0.1
    XCTAssert(slider.value == 0.1, "Initial value")
    
    slider.valueDynamic <-> dynamicDriver
    XCTAssert(slider.value == 0.0, "Slider value after binding")
    
    dynamicDriver.value = 0.5
    XCTAssert(slider.value == 0.5, "Slider value reflects dynamic value change")
    
    slider.valueDynamic.value = 0.8
    XCTAssert(dynamicDriver.value == 0.8, "Dynamic value reflects slider value change")
  }
}
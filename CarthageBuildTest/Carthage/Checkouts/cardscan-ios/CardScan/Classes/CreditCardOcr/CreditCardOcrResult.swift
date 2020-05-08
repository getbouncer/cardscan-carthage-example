//
//  CreditCardOcrResult.swift
//  ocr-playground-ios
//
//  Created by Sam King on 3/20/20.
//  Copyright © 2020 Sam King. All rights reserved.
//

import Foundation

public class CreditCardOcrResult: MachineLearningResult {
    public let mostRecentPrediction: CreditCardOcrPrediction
    public let number: String
    public let expiry: String?
    public let name: String?
    public let isFinished: Bool
    
    init(mostRecentPrediction: CreditCardOcrPrediction, number: String, expiry: String?, name: String?, isFinished: Bool, duration: Double, frames: Int) {
        self.mostRecentPrediction = mostRecentPrediction
        self.number = number
        self.expiry = expiry
        self.name = name
        self.isFinished = isFinished
        super.init(duration: duration, frames: frames)
    }
    
    public var expiryMonth: String? {
        return expiry.flatMap { $0.split(separator: "/").first.map { String($0) }}
    }
    public var expiryYear: String? {
        return expiry.flatMap { $0.split(separator: "/").last.map { String($0) }}
    }
}

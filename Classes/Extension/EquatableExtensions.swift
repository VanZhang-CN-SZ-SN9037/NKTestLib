//
//  EquatableExtensions.swift
//  BotProtectionCharliePlugin
//
//  Created by Shawn Nelson on 4/22/22.
//  Copyright © 2022 Nike. All rights reserved.
//

import Foundation
import NetworkInterface

extension NetworkInterface.RetryResult: Equatable {
    public static func == (lhs: NetworkInterface.RetryResult, rhs: NetworkInterface.RetryResult) -> Bool {
        switch (lhs, rhs) {
        case (.retry, .retry):
            return true

        case (.retryWithDelay(let lhsDelay), .retryWithDelay(let rhsDelay)):
            return lhsDelay == rhsDelay

        case (.doNotRetry, .doNotRetry):
            return true

        case (.doNotRetryWithError, .doNotRetryWithError):
            return true

        default:
            return false
        }
    }
}

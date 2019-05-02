// Copyright (C) 2019 Parrot Drones SAS
//
//    Redistribution and use in source and binary forms, with or without
//    modification, are permitted provided that the following conditions
//    are met:
//    * Redistributions of source code must retain the above copyright
//      notice, this list of conditions and the following disclaimer.
//    * Redistributions in binary form must reproduce the above copyright
//      notice, this list of conditions and the following disclaimer in
//      the documentation and/or other materials provided with the
//      distribution.
//    * Neither the name of the Parrot Company nor the names
//      of its contributors may be used to endorse or promote products
//      derived from this software without specific prior written
//      permission.
//
//    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
//    PARROT COMPANY BE LIABLE FOR ANY DIRECT, INDIRECT,
//    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
//    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
//    OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
//    AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
//    OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//    SUCH DAMAGE.

import Foundation

/// Utilities to manage numerical values

/// A percent interval between 0% and 100 %
public let percentInterval: ClosedRange<UInt> = 0...100

/// A signed percent interval between -100 % and +100 %
public let signedPercentInterval: ClosedRange<Int> = -100...100

/// A floating point signed percent interval between -1.0 and +1
public let signedPercentIntervalDouble = -1.0...1.0

/// A floating point unsigned percent interval between 0 and +1
public let unsignedPercentIntervalDouble = 0.0...1.0

/// Add a function to clamp a value in a closed interval
public extension ClosedRange {
    /// Clamp a value to fit in this range
    ///
    /// - Parameter value: the value to clamp
    /// - Returns: the value clamped in the range
    func clamp(_ value: Bound) -> Bound {
        if self.contains(value) {
            return value
        }
        return value < self.lowerBound ? self.lowerBound : self.upperBound
    }
}

/// Add a function to clamp a value in an interval
public extension Range {
    /// Clamp a value to fit in this range
    ///
    /// - Parameter value: the value to clamp
    /// - Returns: the value clamped in the range
    func clamp(_ value: Bound) -> Bound {
        if self.contains(value) {
            return value
        }
        return value < self.lowerBound ? self.lowerBound : self.upperBound
    }
}

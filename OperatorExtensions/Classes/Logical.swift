
//  Logical.swift
//  OperatorExtensions
//
//  Created by 3ph on 06/20/2017.
//
//  MIT License
//
//  Copyright (c) 2017 Tomas Friml
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//  

// MARK: - Logical conjunction
infix operator ∧ : LogicalConjunctionPrecedence
public func ∧ (left: Bool, right: Bool) -> Bool {
    return kpq(left: left, right: right)
}

public func and(_ left: Bool, _ right: Bool) -> Bool {
    return kpq(left: left, right: right)
}

public func kpq(left: Bool, right: Bool) -> Bool {
    return left && right
}

// MARK: - Logical disjunction
infix operator ∨ : LogicalDisjunctionPrecedence
public func ∨ (left: Bool, right: Bool) -> Bool {
    return apq(left: left, right: right)
}

public func or(_ left: Bool, _ right: Bool) -> Bool {
    return apq(left: left, right: right)
}

public func apq(left: Bool, right: Bool) -> Bool {
    return left || right
}

// MARK: - Logical negation
prefix operator ¬
public prefix func ¬ (param: Bool) -> Bool {
    return fpq(param: param)
}

prefix operator ~
public prefix func ~ (param: Bool) -> Bool {
    return fpq(param: param)
}

public func not(_ param: Bool) -> Bool {
    return fpq(param: param)
}

public func fpq(param: Bool) -> Bool {
    return !param
}


// MARK: - Logical implication operator
infix operator → : LogicalDisjunctionPrecedence
public func → (left: Bool, right: Bool) -> Bool {
    return cpq(left: left, right: right)
}

infix operator ⇒ : LogicalDisjunctionPrecedence
public func ⇒ (left: Bool, right: Bool) -> Bool {
    return cpq(left: left, right: right)
}

infix operator ⊃ : LogicalDisjunctionPrecedence
public func ⊃ (left: Bool, right: Bool) -> Bool {
    return cpq(left: left, right: right)
}

public func impl(_ left: Bool, _ right: Bool) -> Bool {
    return cpq(left: left, right: right)
}

public func cpq(left: Bool, right: Bool) -> Bool {
    return !left || right
}

// MARK: - Logical equality operator (XNOR)
infix operator ⇔ : LogicalDisjunctionPrecedence
public func ⇔ (left: Bool, right: Bool) -> Bool {
    return epq(left: left, right: right)
}

infix operator ≡ : LogicalDisjunctionPrecedence
public func ≡ (left: Bool, right: Bool) -> Bool {
    return epq(left: left, right: right)
}

infix operator ↔ : LogicalDisjunctionPrecedence
public func ↔ (left: Bool, right: Bool) -> Bool {
    return epq(left: left, right: right)
}

public func xnor(_ left: Bool, _ right: Bool) -> Bool {
    return epq(left: left, right: right)
}

public func epq(left: Bool, right: Bool) -> Bool {
    return left == right
}

// MARK: - Logical exclusive disjunction operator (XOR)
infix operator ⊕ : LogicalDisjunctionPrecedence
public func ⊕ (left: Bool, right: Bool) -> Bool {
    return jpq(left: left, right: right)
}

infix operator ⊻ : LogicalDisjunctionPrecedence
public func ⊻ (left: Bool, right: Bool) -> Bool {
    return jpq(left: left, right: right)
}

infix operator ^^ : LogicalDisjunctionPrecedence
public func ^^ (left: Bool, right: Bool) -> Bool {
    return jpq(left: left, right: right)
}


public func xor(_ left: Bool, _ right: Bool) -> Bool {
    return jpq(left: left, right: right)
}

public func jpq(left: Bool, right: Bool) -> Bool {
    return left != right
}

// MARK: - Logical NAND operator
infix operator ↑ : LogicalDisjunctionPrecedence
public func ↑ (left: Bool, right: Bool) -> Bool {
    return dpq(left: left, right: right)
}

infix operator ⊼ : LogicalDisjunctionPrecedence
public func ⊼ (left: Bool, right: Bool) -> Bool {
    return dpq(left: left, right: right)
}

public func nand(_ left: Bool, _ right: Bool) -> Bool {
    return dpq(left: left, right: right)
}

public func dpq(left: Bool, right: Bool) -> Bool {
    return !(left && right)
}

// MARK: - Logical NOR operator
infix operator ↓ : LogicalDisjunctionPrecedence
public func ↓ (left: Bool, right: Bool) -> Bool {
    return xpq(left: left, right: right)
}

infix operator ⊽ : LogicalDisjunctionPrecedence
public func ⊽ (left: Bool, right: Bool) -> Bool {
    return xpq(left: left, right: right)
}

public func nor(_ left: Bool, _ right: Bool) -> Bool {
    return xpq(left: left, right: right)
}

public func xpq(left: Bool, right: Bool) -> Bool {
    return !(left || right)
}

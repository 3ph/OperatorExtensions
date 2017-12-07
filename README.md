# OperatorExtensions

[![CI Status](http://img.shields.io/travis/3ph/OperatorExtensions.svg?style=flat)](https://travis-ci.org/3ph/OperatorExtensions)
[![Version](https://img.shields.io/cocoapods/v/OperatorExtensions.svg?style=flat)](http://cocoapods.org/pods/OperatorExtensions)
[![License](https://img.shields.io/cocoapods/l/OperatorExtensions.svg?style=flat)](http://cocoapods.org/pods/OperatorExtensions)
[![Platform](https://img.shields.io/cocoapods/p/OperatorExtensions.svg?style=flat)](http://cocoapods.org/pods/OperatorExtensions)
![Swift](https://img.shields.io/badge/in-swift4.0-orange.svg)

Provides additional operators currently not supported in Swift:
- [Logical boolean operators (AND, OR, NOT, IMPL, XOR, XNOR, NAND, NOR)](#logical-operators)
- [Logical boolean assignment operators (&&=, ||=, ...)](#logical-assignment-operators)

## Usage

#### Logical operators
- [Conjuncition](https://en.wikipedia.org/wiki/Logical_conjunction):
`true ∧ false` (U+2227)
`true && false`
`and(true, false)`

- [Disjunction](https://en.wikipedia.org/wiki/Logical_disjunction):
`true ∨ false` (U+2228)
`true || false`
`or(true, false)`

- [Negation](https://en.wikipedia.org/wiki/Negation) (NOT):
`¬true` (U+00AC)
`~true`
`not(true)`

- [Implication](https://en.wikipedia.org/wiki/Material_conditional) (IMPL):
`false ⇒ true` (U+21D2)
`false → true` (U+2192)
`false ⊃ true` (U+2283)
`impl(false, true)`

- [Exclusive disjunction](https://en.wikipedia.org/wiki/Exclusive_or) (XOR):
`true ⊕ false` (U+2295)
`true ⊻ false` (U+22BB)
`true ^^ false`

- [Equality](https://en.wikipedia.org/wiki/If_and_only_if) (XNOR)
`true ⇔ false` (U+21D4)
`true ≡ false` (U+2261)
`true ↔ false` (U+2194)
`xor(true, false)`

- Negated conjunction (NAND)
`true ↑ false` (U+2191)
`true ⊼ false` (U+22BC)
`nand(true, false)`

- Negated disjunction (NOR)
`true ↓ false` (U+2193)
`true ⊽ false` (U+22BD)
`nor(true, false)`

#### Logical assignment operators
You can use the same operators as in [Logical operators](#logical-operators) section above.
```swift
var left = true
```
- Conjunction AND (`&&=`, `&=`, `∧=`)
`left &&= false`, `left` equals `false`

- Disjunction OR (`||=`, `|=`, `∨=`)
`left ||= false`, `left` equals `true`

- Implication IMPL (`→=`, `⇒=`, `⊃=`)
`left →= false`, `left` equals `false`

- Exclusive disjunction XOR (`^^=`, `^=`, `⊕=`, `⊻=`)
`left ^^= true`, `left` equals `false`

- Equality XNOR (`⇔=`, `≡=`, `↔=`)
`left ⇔= true`, `left` equals `true`

- Negated conjunction NAND (`↑=`, `⊼=`)
`left ↑= true`, `left` equals `false`

- Negated disjunction NOR (`↓=`, `⊽=`)
`left ↓= false`, `left` equals `false`

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 8+

## Installation

OperatorExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "OperatorExtensions"
```

## Author

Tomas Friml, instantni.med@gmail.com

## License

OperatorExtensions is available under the MIT license. See the LICENSE file for more info.

// https://github.com/Quick/Quick

import Quick
import Nimble
import OperatorExtensions

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("Operator tests") {

            context("Logical operators") {
                it("AND") {
                    expect(true ∧ true) == true
                    expect(true && false) == false
                    expect(and(false, true)) == false
                    expect(and(false, false)) == false
                }
                
                it("OR") {
                    expect(true ∨ true) == true
                    expect(true || false) == true
                    expect(or(false, true)) == true
                    expect(or(false, false)) == false
                }
                
                it("NOT") {
                    expect(¬true) == false
                    expect(not(false)) == true
                }
                
                it("IMPL") {
                    expect(true ⇒ true) == true
                    expect(true → false) == false
                    expect(impl(false, true)) == true
                    expect(impl(false, false)) == true
                }
                
                it("XNOR") {
                    expect(true ⇔ true) == true
                    expect(true ≡ false) == false
                    expect(xnor(false, true)) == false
                    expect(xnor(false, false)) == true
                }
                
                it("XOR") {
                    expect(true ^^ true) == false
                    expect(true ⊻ false) == true
                    expect(false ⊕ true) == true
                    expect(xor(false, false)) == false
                }
                
                it("NAND") {
                    expect(true ↑ true) == false
                    expect(true ⊼ false) == true
                    expect(nand(false, true)) == true
                    expect(nand(false, false)) == true
                }
                
                it("NOR") {
                    expect(true ↓ true) == false
                    expect(true ⊽ false) == false
                    expect(nor(false, true)) == false
                    expect(nor(false, false)) == true
                }
            }
            
            context("Logical assignment operators") {
                it("&&=") {
                    var test = true
                    test &&= false
                    expect(test) == false
                    test = true
                    test ∧= true
                    expect(test) == true
                }
                
                it("||=") {
                    var test = true
                    test ||= false
                    expect(test) == true
                    test = false
                    test ∨= false
                    expect(test) == false
                }
                
                it("→=") {
                    var test = false
                    test →= false
                    expect(test) == true
                }
                
                it("⇔=") {
                    var test = false
                    test ⇔= false
                    expect(test) == true
                }
                
                it("^^=") {
                    var test = true
                    test ^^= false
                    expect(test) == true
                    test = true
                    test ⊻= true
                    expect(test) == false
                    test ⊕= true
                    expect(test) == true
                }
                
                
                it("↑=") {
                    var test = true
                    test ↑= true
                    expect(test) == false
                }
                
                it("↓=") {
                    var test = false
                    test ↓= false
                    expect(test) == true
                }
                
            }
        }
    }
}

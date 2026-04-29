(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.511262661013667685239170168642885982990264892578125p439 {+ 2302522329629602 439 (2.1454e+132)}
; Y = 1.968367271647049943084084588917903602123260498046875p942 {+ 4361138483747438 942 (7.31749e+283)}
; 1.511262661013667685239170168642885982990264892578125p439 > 1.968367271647049943084084588917903602123260498046875p942 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110110110 #b1000001011100010000111000001100010111000001110100010)))
(assert (= y (fp #b0 #b11110101101 #b1111011111100110111010101110001000111101101001101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

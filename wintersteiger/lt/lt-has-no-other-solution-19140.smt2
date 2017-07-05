(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5238679810601407638159798807464540004730224609375p-838 {- 2359291644293784 -838 (-8.31402e-253)}
; Y = 1.503519736250091387574912005220539867877960205078125p-709 {+ 2267651296549602 -709 (5.58267e-214)}
; -1.5238679810601407638159798807464540004730224609375p-838 < 1.503519736250091387574912005220539867877960205078125p-709 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111001 #b1000011000011100001101100100011000010011001010011000)))
(assert (= y (fp #b0 #b00100111010 #b1000000011100110101010110110000000010101101011100010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

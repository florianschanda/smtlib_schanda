(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.542783709504237155130113023915328085422515869140625p-381 {- 2444480511866058 -381 (-3.1324e-115)}
; Y = -1.549342895776517625705537284375168383121490478515625p-527 {- 2474020460717754 -527 (-3.52647e-159)}
; -1.542783709504237155130113023915328085422515869140625p-381 > -1.549342895776517625705537284375168383121490478515625p-527 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000010 #b1000101011110011110111111000100100011111010011001010)))
(assert (= y (fp #b1 #b00111110000 #b1000110010100001101111000110101110100110011010111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

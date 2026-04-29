(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1123490770366528668233740972937084734439849853515625p830 {- 505975261477689 830 (-7.96411e+249)}
; Y = -1.1300798181352111893005485399044118821620941162109375p-135 {- 585827420482159 -135 (-2.59454e-041)}
; -1.1123490770366528668233740972937084734439849853515625p830 < -1.1300798181352111893005485399044118821620941162109375p-135 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111101 #b0001110011000010111010001011101110011011101100111001)))
(assert (= y (fp #b1 #b01101111000 #b0010000101001100111010010011010011000010101001101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

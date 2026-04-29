(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3807940672449083852058038246468640863895416259765625p211 {+ 1714944019349065 211 (4.54421e+063)}
; Y = 1.4209380840096148546081167296506464481353759765625p620 {+ 1895736598291752 620 (6.18262e+186)}
; 1.3807940672449083852058038246468640863895416259765625p211 < 1.4209380840096148546081167296506464481353759765625p620 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010010 #b0110000101111011101110000101000101010011111001001001)))
(assert (= y (fp #b0 #b11001101011 #b0110101111000010100110010010100001110110010100101000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

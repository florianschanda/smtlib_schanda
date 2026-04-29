(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.5826812728136292474090396353858523070812225341796875p-1022 {+ 2624163163119227 -1023 (1.29651e-308)}
; Y = -1.8643427852895755325590698703308589756488800048828125p139 {- 3892653845750509 139 (-1.29926e+042)}
; 0.5826812728136292474090396353858523070812225341796875p-1022 < -1.8643427852895755325590698703308589756488800048828125p139 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1001010100101010100110011001001010111001111001111011)))
(assert (= y (fp #b1 #b10010001010 #b1101110101000101100100011001101101011010001011101101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

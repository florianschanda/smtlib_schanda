(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1110856080327498052184864718583412468433380126953125p142 {+ 500285102942517 142 (6.19451e+042)}
; Y = 1.708772538504246707447009612224064767360687255859375p-695 {+ 3192027740298166 -695 (1.03953e-209)}
; 1.1110856080327498052184864718583412468433380126953125p142 < 1.708772538504246707447009612224064767360687255859375p-695 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001101 #b0001110001110000000110110011110110001110100100110101)))
(assert (= y (fp #b0 #b00101001000 #b1011010101110010000111011111100100101101101110110110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

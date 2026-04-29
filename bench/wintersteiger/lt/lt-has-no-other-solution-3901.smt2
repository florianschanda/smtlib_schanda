(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7046313309367635557833864368149079382419586181640625p811 {- 3173377399440385 811 (-2.32786e+244)}
; Y = -1.78351059734283001745325236697681248188018798828125p-378 {- 3528618034234004 -378 (-2.89693e-114)}
; -1.7046313309367635557833864368149079382419586181640625p811 < -1.78351059734283001745325236697681248188018798828125p-378 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101010 #b1011010001100010101110000000101000011100010000000001)))
(assert (= y (fp #b1 #b01010000101 #b1100100010010100001001101000011110101000001010010100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

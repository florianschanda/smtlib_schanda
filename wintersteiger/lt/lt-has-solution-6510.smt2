(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.690257334093776098171701960382051765918731689453125p-509 {+ 3108642672614482 -509 (1.00852e-153)}
; Y = -1.60153009159148407292150295688770711421966552734375p120 {- 2709050696343548 120 (-2.1288e+036)}
; 1.690257334093776098171701960382051765918731689453125p-509 < -1.60153009159148407292150295688770711421966552734375p120 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000010 #b1011000010110100101101000110001111000001110001010010)))
(assert (= y (fp #b1 #b10001110111 #b1001100111111101111000000100011011110001111111111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

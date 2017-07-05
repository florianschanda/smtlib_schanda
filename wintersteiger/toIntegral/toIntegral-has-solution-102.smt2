(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6389936033822174454854803116177208721637725830078125 236 {+ 2877771354084285 236 (1.80991e+071)}
; 1.6389936033822174454854803116177208721637725830078125 236 I == 1.6389936033822174454854803116177208721637725830078125 236
; [HW: 1.6389936033822174454854803116177208721637725830078125 236] 

; mpf : + 2877771354084285 236
; mpfd: + 2877771354084285 236 (1.80991e+071) class: Pos. norm. non-zero
; hwf : + 2877771354084285 236 (1.80991e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101011 #b1010001110010101000101011011010011100001001110111101)))
(assert (= r (fp #b0 #b10011101011 #b1010001110010101000101011011010011100001001110111101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

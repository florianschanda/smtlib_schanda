(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8707875038870194206452879370772279798984527587890625p-448 {- 3921678278024465 -448 (-2.57387e-135)}
; Y = -zero {- 0 -1023 (-0)}
; -1.8707875038870194206452879370772279798984527587890625p-448 m -zero == -1.8707875038870194206452879370772279798984527587890625p-448
; [HW: -1.8707875038870194206452879370772279798984527587890625p-448] 

; mpf : - 3921678278024465 -448
; mpfd: - 3921678278024465 -448 (-2.57387e-135) class: Neg. norm. non-zero
; hwf : - 3921678278024465 -448 (-2.57387e-135) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000111111 #b1101111011101011111011100000101011110101110100010001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01000111111 #b1101111011101011111011100000101011110101110100010001)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

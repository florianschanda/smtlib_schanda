(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9964724434922465068353858441696502268314361572265625p620 {- 4487712925196649 620 (-8.68682e+186)}
; Y = -zero {- 0 -1023 (-0)}
; -1.9964724434922465068353858441696502268314361572265625p620 + -zero == -1.9964724434922465068353858441696502268314361572265625p620
; [HW: -1.9964724434922465068353858441696502268314361572265625p620] 

; mpf : - 4487712925196649 620
; mpfd: - 4487712925196649 620 (-8.68682e+186) class: Neg. norm. non-zero
; hwf : - 4487712925196649 620 (-8.68682e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101011 #b1111111100011000110100010110110000101010000101101001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11001101011 #b1111111100011000110100010110110000101010000101101001)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)

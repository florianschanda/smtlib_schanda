(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.433658365011968971458600208279676735401153564453125p30 {+ 1953023651074002 30 (1.53938e+009)}
; Y = -1.10822674414474864335033998941071331501007080078125p537 {- 487409924601812 537 (-4.98582e+161)}
; 1.433658365011968971458600208279676735401153564453125p30 - -1.10822674414474864335033998941071331501007080078125p537 == 1.1082267441447488653949449144420213997364044189453125p537
; [HW: 1.1082267441447488653949449144420213997364044189453125p537] 

; mpf : + 487409924601813 537
; mpfd: + 487409924601813 537 (4.98582e+161) class: Pos. norm. non-zero
; hwf : + 487409924601813 537 (4.98582e+161) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011101 #b0110111100000100001111000000111101011100111111010010)))
(assert (= y (fp #b1 #b11000011000 #b0001101110110100101111110111011010100111011111010100)))
(assert (= r (fp #b0 #b11000011000 #b0001101110110100101111110111011010100111011111010101)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)

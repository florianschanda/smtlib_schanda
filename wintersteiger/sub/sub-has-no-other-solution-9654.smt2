(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3359331310553972382848542110878042876720428466796875p50 {- 1512908323842491 50 (-1.50413e+015)}
; Y = 1.7266770238465796172278032827307470142841339111328125p484 {+ 3272662373814157 484 (8.6244e+145)}
; -1.3359331310553972382848542110878042876720428466796875p50 - 1.7266770238465796172278032827307470142841339111328125p484 == -1.7266770238465796172278032827307470142841339111328125p484
; [HW: -1.7266770238465796172278032827307470142841339111328125p484] 

; mpf : - 3272662373814157 484
; mpfd: - 3272662373814157 484 (-8.6244e+145) class: Neg. norm. non-zero
; hwf : - 3272662373814157 484 (-8.6244e+145) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110001 #b0101010111111111101101101011001110000110100110111011)))
(assert (= y (fp #b0 #b10111100011 #b1011101000000111100000010110010000101100111110001101)))
(assert (= r (fp #b1 #b10111100011 #b1011101000000111100000010110010000101100111110001101)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)

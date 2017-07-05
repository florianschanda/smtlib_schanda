(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0010568509847417306701800043811090290546417236328125 752 {- 4759633701069 752 (-2.37146e+226)}
; -1.0010568509847417306701800043811090290546417236328125 752 I == -1.0010568509847417306701800043811090290546417236328125 752
; [HW: -1.0010568509847417306701800043811090290546417236328125 752] 

; mpf : - 4759633701069 752
; mpfd: - 4759633701069 752 (-2.37146e+226) class: Neg. norm. non-zero
; hwf : - 4759633701069 752 (-2.37146e+226) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101111 #b0000000001000101010000110000010001101010100011001101)))
(assert (= r (fp #b1 #b11011101111 #b0000000001000101010000110000010001101010100011001101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7550196988558284250103724843938834965229034423828125p-72 {- 3400306434424493 -72 (-3.7164e-022)}
; Y = -1.6469843053637032159741693249088712036609649658203125p-374 {- 2913758276550533 -374 (-4.28027e-113)}
; -1.7550196988558284250103724843938834965229034423828125p-72 m -1.6469843053637032159741693249088712036609649658203125p-374 == -1.7550196988558284250103724843938834965229034423828125p-72
; [HW: -1.7550196988558284250103724843938834965229034423828125p-72] 

; mpf : - 3400306434424493 -72
; mpfd: - 3400306434424493 -72 (-3.7164e-022) class: Neg. norm. non-zero
; hwf : - 3400306434424493 -72 (-3.7164e-022) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110110111 #b1100000101001000111110001001001001101011111010101101)))
(assert (= y (fp #b1 #b01010001001 #b1010010110100000110000110111000010001111111110000101)))
(assert (= r (fp #b1 #b01110110111 #b1100000101001000111110001001001001101011111010101101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

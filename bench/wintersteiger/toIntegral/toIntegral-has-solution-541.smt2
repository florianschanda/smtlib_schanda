(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7533474242291238187618773736176081001758575439453125 233 {- 3392775179038805 233 (-2.42023e+070)}
; -1.7533474242291238187618773736176081001758575439453125 233 I == -1.7533474242291238187618773736176081001758575439453125 233
; [HW: -1.7533474242291238187618773736176081001758575439453125 233] 

; mpf : - 3392775179038805 233
; mpfd: - 3392775179038805 233 (-2.42023e+070) class: Neg. norm. non-zero
; hwf : - 3392775179038805 233 (-2.42023e+070) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101000 #b1100000011011011011000000111010110010111000001010101)))
(assert (= r (fp #b1 #b10011101000 #b1100000011011011011000000111010110010111000001010101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

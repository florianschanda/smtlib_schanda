(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7324198378706110457159184079500846564769744873046875p-105 {+ 3298525708912843 -105 (4.27074e-032)}
; 1.7324198378706110457159184079500846564769744873046875p-105 S == 1.8614079820773363760366692076786421239376068115234375p-53
; [HW: 1.8614079820773363760366692076786421239376068115234375p-53] 

; mpf : + 3879436667097463 -53
; mpfd: + 3879436667097463 -53 (2.06658e-016) class: Pos. norm. non-zero
; hwf : + 3879436667097463 -53 (2.06658e-016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010110 #b1011101101111111110111011101001010011000100011001011)))
(assert (= r (fp #b0 #b01111001010 #b1101110010000101001110111100011110001001000101110111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

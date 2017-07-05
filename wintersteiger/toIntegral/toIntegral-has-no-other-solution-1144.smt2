(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9576481709105924000624554537353105843067169189453125 492 {+ 4312863945664981 492 (2.50318e+148)}
; 1.9576481709105924000624554537353105843067169189453125 492 I == 1.9576481709105924000624554537353105843067169189453125 492
; [HW: 1.9576481709105924000624554537353105843067169189453125 492] 

; mpf : + 4312863945664981 492
; mpfd: + 4312863945664981 492 (2.50318e+148) class: Pos. norm. non-zero
; hwf : + 4312863945664981 492 (2.50318e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1111010100101000011011100011011100100010100111010101)))
(assert (= r (fp #b0 #b10111101011 #b1111010100101000011011100011011100100010100111010101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

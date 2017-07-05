(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.940198774422373872994285193271934986114501953125 523 {- 4234278850142800 523 (-5.32763e+157)}
; -1.940198774422373872994285193271934986114501953125 523 I == -1.940198774422373872994285193271934986114501953125 523
; [HW: -1.940198774422373872994285193271934986114501953125 523] 

; mpf : - 4234278850142800 523
; mpfd: - 4234278850142800 523 (-5.32763e+157) class: Neg. norm. non-zero
; hwf : - 4234278850142800 523 (-5.32763e+157) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000001010 #b1111000010110000110111011110101111100010001001010000)))
(assert (= r (fp #b1 #b11000001010 #b1111000010110000110111011110101111100010001001010000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

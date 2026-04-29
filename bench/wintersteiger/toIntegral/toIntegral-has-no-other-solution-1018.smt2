(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.87018161910065838782202263246290385723114013671875 468 {- 3918949615526380 468 (-1.42535e+141)}
; -1.87018161910065838782202263246290385723114013671875 468 I == -1.87018161910065838782202263246290385723114013671875 468
; [HW: -1.87018161910065838782202263246290385723114013671875 468] 

; mpf : - 3918949615526380 468
; mpfd: - 3918949615526380 468 (-1.42535e+141) class: Neg. norm. non-zero
; hwf : - 3918949615526380 468 (-1.42535e+141) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010011 #b1101111011000100001110001111101110011110000111101100)))
(assert (= r (fp #b1 #b10111010011 #b1101111011000100001110001111101110011110000111101100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

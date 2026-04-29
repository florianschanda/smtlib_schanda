(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0997793548512728722954534532618708908557891845703125 374 {- 449366265327461 374 (-4.23179e+112)}
; -1.0997793548512728722954534532618708908557891845703125 374 I == -1.0997793548512728722954534532618708908557891845703125 374
; [HW: -1.0997793548512728722954534532618708908557891845703125 374] 

; mpf : - 449366265327461 374
; mpfd: - 449366265327461 374 (-4.23179e+112) class: Neg. norm. non-zero
; hwf : - 449366265327461 374 (-4.23179e+112) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110101 #b0001100110001011001000111100100111100110111101100101)))
(assert (= r (fp #b1 #b10101110101 #b0001100110001011001000111100100111100110111101100101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

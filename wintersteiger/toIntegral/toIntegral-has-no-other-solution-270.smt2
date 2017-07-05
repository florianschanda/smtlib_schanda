(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1900020874518155711285771758412010967731475830078125 79 {- 855693330247613 79 (-7.19312e+023)}
; -1.1900020874518155711285771758412010967731475830078125 79 I == -1.1900020874518155711285771758412010967731475830078125 79
; [HW: -1.1900020874518155711285771758412010967731475830078125 79] 

; mpf : - 855693330247613 79
; mpfd: - 855693330247613 79 (-7.19312e+023) class: Neg. norm. non-zero
; hwf : - 855693330247613 79 (-7.19312e+023) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001110 #b0011000010100011111110100000111111000110111110111101)))
(assert (= r (fp #b1 #b10001001110 #b0011000010100011111110100000111111000110111110111101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

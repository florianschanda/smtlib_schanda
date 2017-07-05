(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.00457454746270880008296444430015981197357177734375 707 {- 20601930248444 707 (-6.76377e+212)}
; -1.00457454746270880008296444430015981197357177734375 707 I == -1.00457454746270880008296444430015981197357177734375 707
; [HW: -1.00457454746270880008296444430015981197357177734375 707] 

; mpf : - 20601930248444 707
; mpfd: - 20601930248444 707 (-6.76377e+212) class: Neg. norm. non-zero
; hwf : - 20601930248444 707 (-6.76377e+212) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000010 #b0000000100101011110011000010101110111111000011111100)))
(assert (= r (fp #b1 #b11011000010 #b0000000100101011110011000010101110111111000011111100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.613282376849328958456908367224968969821929931640625 454 {+ 2761978283851530 454 (7.50462e+136)}
; 1.613282376849328958456908367224968969821929931640625 454 I == 1.613282376849328958456908367224968969821929931640625 454
; [HW: 1.613282376849328958456908367224968969821929931640625 454] 

; mpf : + 2761978283851530 454
; mpfd: + 2761978283851530 454 (7.50462e+136) class: Pos. norm. non-zero
; hwf : + 2761978283851530 454 (7.50462e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000101 #b1001110100000000000100101110011111000111111100001010)))
(assert (= r (fp #b0 #b10111000101 #b1001110100000000000100101110011111000111111100001010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

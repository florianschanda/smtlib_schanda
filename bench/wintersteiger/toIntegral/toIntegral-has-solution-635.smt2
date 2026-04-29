(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.91429004607843200602701472234912216663360595703125 628 {- 4117596310827380 628 (-2.13228e+189)}
; -1.91429004607843200602701472234912216663360595703125 628 I == -1.91429004607843200602701472234912216663360595703125 628
; [HW: -1.91429004607843200602701472234912216663360595703125 628] 

; mpf : - 4117596310827380 628
; mpfd: - 4117596310827380 628 (-2.13228e+189) class: Neg. norm. non-zero
; hwf : - 4117596310827380 628 (-2.13228e+189) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001110011 #b1110101000001110111010011001011011110111000101110100)))
(assert (= r (fp #b1 #b11001110011 #b1110101000001110111010011001011011110111000101110100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

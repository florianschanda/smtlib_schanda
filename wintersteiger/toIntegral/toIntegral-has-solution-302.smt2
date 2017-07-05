(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6905768173051571867659959025331772863864898681640625 -92 {+ 3110081497086209 -92 (3.41409e-028)}
; 1.6905768173051571867659959025331772863864898681640625 -92 I == 1.0 0
; [HW: 1.0 0] 

; mpf : + 0 0
; mpfd: + 0 0 (1) class: Pos. norm. non-zero
; hwf : + 0 0 (1) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100011 #b1011000011001001101001000110110110110011100100000001)))
(assert (= r (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

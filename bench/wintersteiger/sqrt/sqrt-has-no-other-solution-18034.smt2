(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.584907252083095130501533276401460170745849609375p163 {+ 2634188082527728 163 (1.85308e+049)}
; 1.584907252083095130501533276401460170745849609375p163 S == 1.78039728829443877344829161302186548709869384765625p81
; [HW: 1.78039728829443877344829161302186548709869384765625p81] 

; mpf : + 3514596936763780 81
; mpfd: + 3514596936763780 81 (4.30474e+024) class: Pos. norm. non-zero
; hwf : + 3514596936763780 81 (4.30474e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100010 #b1001010110111100011110110100111011100011110111110000)))
(assert (= r (fp #b0 #b10001010000 #b1100011111001000000111011101111100011100100110000100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

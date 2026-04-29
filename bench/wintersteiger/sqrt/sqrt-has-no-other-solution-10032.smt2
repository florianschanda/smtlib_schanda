(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.466001166888878604055435062036849558353424072265625p-308 {+ 2098682681554970 -308 (2.81123e-093)}
; 1.466001166888878604055435062036849558353424072265625p-308 S == 1.2107853512860480282853359312866814434528350830078125p-154
; [HW: 1.2107853512860480282853359312866814434528350830078125p-154] 

; mpf : + 949292829507005 -154
; mpfd: + 949292829507005 -154 (5.3021e-047) class: Pos. norm. non-zero
; hwf : + 949292829507005 -154 (5.3021e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001011 #b0111011101001011110110100011101110101111100000011010)))
(assert (= r (fp #b0 #b01101100101 #b0011010111110110000001110101111000111111110110111101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

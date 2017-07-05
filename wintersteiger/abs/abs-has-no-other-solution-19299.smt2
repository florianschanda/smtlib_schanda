(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.69009141113734262518164541688747704029083251953125p623 {- 3107895422049716 623 (-5.88298e+187)}
; -1.69009141113734262518164541688747704029083251953125p623 | == 1.69009141113734262518164541688747704029083251953125p623
; [HW: 1.69009141113734262518164541688747704029083251953125p623] 

; mpf : + 3107895422049716 623
; mpfd: + 3107895422049716 623 (5.88298e+187) class: Pos. norm. non-zero
; hwf : + 3107895422049716 623 (5.88298e+187) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101110 #b1011000010101001110101001010101000010101110110110100)))
(assert (= r (fp #b0 #b11001101110 #b1011000010101001110101001010101000010101110110110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

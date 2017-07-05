(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4796443511207393317619107619975693523883819580078125p-146 {- 2160126120977725 -146 (-1.65874e-044)}
; -1.4796443511207393317619107619975693523883819580078125p-146 | == 1.4796443511207393317619107619975693523883819580078125p-146
; [HW: 1.4796443511207393317619107619975693523883819580078125p-146] 

; mpf : + 2160126120977725 -146
; mpfd: + 2160126120977725 -146 (1.65874e-044) class: Pos. norm. non-zero
; hwf : + 2160126120977725 -146 (1.65874e-044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101101101 #b0111101011001001111110001110000111000110010100111101)))
(assert (= r (fp #b0 #b01101101101 #b0111101011001001111110001110000111000110010100111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

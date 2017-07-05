(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.698249750688532788700513265212066471576690673828125p491 {- 3144637317012418 491 (-1.08575e+148)}
; -1.698249750688532788700513265212066471576690673828125p491 | == 1.698249750688532788700513265212066471576690673828125p491
; [HW: 1.698249750688532788700513265212066471576690673828125p491] 

; mpf : + 3144637317012418 491
; mpfd: + 3144637317012418 491 (1.08575e+148) class: Pos. norm. non-zero
; hwf : + 3144637317012418 491 (1.08575e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111101010 #b1011001011000000011111101110001110100101101111000010)))
(assert (= r (fp #b0 #b10111101010 #b1011001011000000011111101110001110100101101111000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

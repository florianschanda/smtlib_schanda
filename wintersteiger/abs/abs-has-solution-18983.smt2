(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.642798527489670146195521738263778388500213623046875p385 {- 2894907208876782 385 (-1.29459e+116)}
; -1.642798527489670146195521738263778388500213623046875p385 | == 1.642798527489670146195521738263778388500213623046875p385
; [HW: 1.642798527489670146195521738263778388500213623046875p385] 

; mpf : + 2894907208876782 385
; mpfd: + 2894907208876782 385 (1.29459e+116) class: Pos. norm. non-zero
; hwf : + 2894907208876782 385 (1.29459e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000000 #b1010010010001110011100011011110101111100001011101110)))
(assert (= r (fp #b0 #b10110000000 #b1010010010001110011100011011110101111100001011101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

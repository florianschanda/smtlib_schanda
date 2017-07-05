(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.884792880203401299610277419560588896274566650390625p532 {- 3984752885584106 532 (-2.64985e+160)}
; -1.884792880203401299610277419560588896274566650390625p532 | == 1.884792880203401299610277419560588896274566650390625p532
; [HW: 1.884792880203401299610277419560588896274566650390625p532] 

; mpf : + 3984752885584106 532
; mpfd: + 3984752885584106 532 (2.64985e+160) class: Pos. norm. non-zero
; hwf : + 3984752885584106 532 (2.64985e+160) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010011 #b1110001010000001110010010100010000110101000011101010)))
(assert (= r (fp #b0 #b11000010011 #b1110001010000001110010010100010000110101000011101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

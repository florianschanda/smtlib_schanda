(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3859563414333442299408716280595399439334869384765625p272 {+ 1738192835460489 272 (1.05174e+082)}
; 1.3859563414333442299408716280595399439334869384765625p272 S == 1.1772664700199968468297129220445640385150909423828125p136
; [HW: 1.1772664700199968468297129220445640385150909423828125p136] 

; mpf : + 798337208327341 136
; mpfd: + 798337208327341 136 (1.02554e+041) class: Pos. norm. non-zero
; hwf : + 798337208327341 136 (1.02554e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001111 #b0110001011001110000010001110100000100011110110001001)))
(assert (= r (fp #b0 #b10010000111 #b0010110101100001010101011101101101101001110010101101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

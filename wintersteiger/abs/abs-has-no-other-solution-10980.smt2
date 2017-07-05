(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9131192768618487942688943803659640252590179443359375p502 {+ 4112323635019839 502 (2.50495e+151)}
; 1.9131192768618487942688943803659640252590179443359375p502 | == 1.9131192768618487942688943803659640252590179443359375p502
; [HW: 1.9131192768618487942688943803659640252590179443359375p502] 

; mpf : + 4112323635019839 502
; mpfd: + 4112323635019839 502 (2.50495e+151) class: Pos. norm. non-zero
; hwf : + 4112323635019839 502 (2.50495e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110101 #b1110100111000010001011110101011101111000000000111111)))
(assert (= r (fp #b0 #b10111110101 #b1110100111000010001011110101011101111000000000111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

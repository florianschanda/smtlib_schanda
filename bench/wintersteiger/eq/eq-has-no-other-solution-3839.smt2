(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.674383390985807462669754386297427117824554443359375p-265 {+ 3037152788348534 -265 (2.82427e-080)}
; Y = -1.7503242334325810336537188049987889826297760009765625p789 {- 3379159938094025 789 (-5.69882e+237)}
; 1.674383390985807462669754386297427117824554443359375p-265 = -1.7503242334325810336537188049987889826297760009765625p789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110110 #b1010110010100100011000111101000100111111111001110110)))
(assert (= y (fp #b1 #b11100010100 #b1100000000010101001111111011101111111101001111001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

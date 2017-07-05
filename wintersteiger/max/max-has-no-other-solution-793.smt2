(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.47347863971436243701873536338098347187042236328125p-69 {- 2132358225385492 -69 (-2.49617e-021)}
; Y = 1.680606609322236710823972316575236618518829345703125p176 {+ 3065179672129522 176 (1.6097e+053)}
; -1.47347863971436243701873536338098347187042236328125p-69 M 1.680606609322236710823972316575236618518829345703125p176 == 1.680606609322236710823972316575236618518829345703125p176
; [HW: 1.680606609322236710823972316575236618518829345703125p176] 

; mpf : + 3065179672129522 176
; mpfd: + 3065179672129522 176 (1.6097e+053) class: Pos. norm. non-zero
; hwf : + 3065179672129522 176 (1.6097e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110111010 #b0111100100110101111001010110100011101101100000010100)))
(assert (= y (fp #b0 #b10010101111 #b1010111000111100001111000001100001111010111111110010)))
(assert (= r (fp #b0 #b10010101111 #b1010111000111100001111000001100001111010111111110010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)

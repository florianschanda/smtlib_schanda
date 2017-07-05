(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7639508591192030184657824065652675926685333251953125p488 {- 3440528804458613 488 (-1.40969e+147)}
; -1.7639508591192030184657824065652675926685333251953125p488 | == 1.7639508591192030184657824065652675926685333251953125p488
; [HW: 1.7639508591192030184657824065652675926685333251953125p488] 

; mpf : + 3440528804458613 488
; mpfd: + 3440528804458613 488 (1.40969e+147) class: Pos. norm. non-zero
; hwf : + 3440528804458613 488 (1.40969e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100111 #b1100001110010010010010001001001110101011000001110101)))
(assert (= r (fp #b0 #b10111100111 #b1100001110010010010010001001001110101011000001110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

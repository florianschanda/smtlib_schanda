(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.218487579837186363107548459083773195743560791015625p-646 {+ 983980583139834 -646 (4.17296e-195)}
; +oo m 1.218487579837186363107548459083773195743560791015625p-646 == 1.218487579837186363107548459083773195743560791015625p-646
; [HW: 1.218487579837186363107548459083773195743560791015625p-646] 

; mpf : + 983980583139834 -646
; mpfd: + 983980583139834 -646 (4.17296e-195) class: Pos. norm. non-zero
; hwf : + 983980583139834 -646 (4.17296e-195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00101111001 #b0011011111101110110011010101000111111011100111111010)))
(assert (= r (fp #b0 #b00101111001 #b0011011111101110110011010101000111111011100111111010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

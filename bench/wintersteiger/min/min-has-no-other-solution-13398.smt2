(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.89430822442398749672065605409443378448486328125p747 {+ 4027606186270240 747 (1.40235e+225)}
; +oo m 1.89430822442398749672065605409443378448486328125p747 == 1.89430822442398749672065605409443378448486328125p747
; [HW: 1.89430822442398749672065605409443378448486328125p747] 

; mpf : + 4027606186270240 747
; mpfd: + 4027606186270240 747 (1.40235e+225) class: Pos. norm. non-zero
; hwf : + 4027606186270240 747 (1.40235e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11011101010 #b1110010011110001011000100100000001110001111000100000)))
(assert (= r (fp #b0 #b11011101010 #b1110010011110001011000100100000001110001111000100000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

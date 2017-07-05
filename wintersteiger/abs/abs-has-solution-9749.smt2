(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0507885169853345974644298621569760143756866455078125p-576 {+ 228731146169853 -576 (4.24852e-174)}
; 1.0507885169853345974644298621569760143756866455078125p-576 | == 1.0507885169853345974644298621569760143756866455078125p-576
; [HW: 1.0507885169853345974644298621569760143756866455078125p-576] 

; mpf : + 228731146169853 -576
; mpfd: + 228731146169853 -576 (4.24852e-174) class: Pos. norm. non-zero
; hwf : + 228731146169853 -576 (4.24852e-174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110111111 #b0000110100000000011110011110101101110110110111111101)))
(assert (= r (fp #b0 #b00110111111 #b0000110100000000011110011110101101110110110111111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

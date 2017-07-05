(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3378553359204143902161376900039613246917724609375p879 {- 1521565164956312 879 (-5.39232e+264)}
; -1.3378553359204143902161376900039613246917724609375p879 | == 1.3378553359204143902161376900039613246917724609375p879
; [HW: 1.3378553359204143902161376900039613246917724609375p879] 

; mpf : + 1521565164956312 879
; mpfd: + 1521565164956312 879 (5.39232e+264) class: Pos. norm. non-zero
; hwf : + 1521565164956312 879 (5.39232e+264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101110 #b0101011001111101101011111111001010001110101010011000)))
(assert (= r (fp #b0 #b11101101110 #b0101011001111101101011111111001010001110101010011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

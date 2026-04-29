(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6032745978951361554010190957342274487018585205078125p364 {+ 2716907254282621 364 (6.02457e+109)}
; 1.6032745978951361554010190957342274487018585205078125p364 | == 1.6032745978951361554010190957342274487018585205078125p364
; [HW: 1.6032745978951361554010190957342274487018585205078125p364] 

; mpf : + 2716907254282621 364
; mpfd: + 2716907254282621 364 (6.02457e+109) class: Pos. norm. non-zero
; hwf : + 2716907254282621 364 (6.02457e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101011 #b1001101001110000001101000011110001110111100101111101)))
(assert (= r (fp #b0 #b10101101011 #b1001101001110000001101000011110001110111100101111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

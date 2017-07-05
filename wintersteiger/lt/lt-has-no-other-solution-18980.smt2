(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7964160777507622857029900842462666332721710205078125p-564 {+ 3586739150990205 -564 (2.97502e-170)}
; Y = 1.892489577709352222001371046644635498523712158203125p-458 {+ 4019415729603890 -458 (2.5427e-138)}
; 1.7964160777507622857029900842462666332721710205078125p-564 < 1.892489577709352222001371046644635498523712158203125p-458 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111001011 #b1100101111100001111011001000111111110010101101111101)))
(assert (= y (fp #b0 #b01000110101 #b1110010001111010001100100110110001001000010100110010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9488702816052676514146924091619439423084259033203125p937 {+ 4273331846660421 937 (2.26406e+282)}
; Y = 1.50459416523700451051581694628112018108367919921875p-686 {+ 2272490094534700 -686 (4.68643e-207)}
; 1.9488702816052676514146924091619439423084259033203125p937 = 1.50459416523700451051581694628112018108367919921875p-686 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101000 #b1111001011101001001010011010101110100100000101000101)))
(assert (= y (fp #b0 #b00101010001 #b1000000100101101000101010100110101110010000000101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

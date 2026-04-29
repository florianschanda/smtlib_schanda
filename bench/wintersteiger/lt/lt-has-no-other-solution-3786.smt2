(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.319741763716559379560067100101150572299957275390625p615 {- 1439988887928682 615 (-1.79447e+185)}
; Y = 1.0615186509589540353459824473247863352298736572265625p-952 {+ 277055373535081 -952 (2.78851e-287)}
; -1.319741763716559379560067100101150572299957275390625p615 < 1.0615186509589540353459824473247863352298736572265625p-952 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100110 #b0101000111011010100110001010001001010011111101101010)))
(assert (= y (fp #b0 #b00001000111 #b0000111110111111101011111011000111110110011101101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

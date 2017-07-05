(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.915118797732768829433780410909093916416168212890625p348 {+ 4121328676469034 348 (1.09808e+105)}
; Y = 1.4683399412724060795198965934105217456817626953125p-688 {+ 2109215584997128 -688 (1.14338e-207)}
; 1.915118797732768829433780410909093916416168212890625p348 > 1.4683399412724060795198965934105217456817626953125p-688 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011011 #b1110101001000101001110011011110000110111100100101010)))
(assert (= y (fp #b0 #b00101001111 #b0111011111100101001000000101101100101100111100001000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.34201423641818795573499301099218428134918212890625p834 {- 1540295187688356 834 (-1.53735e+251)}
; Y = 1.955497095275323005125756026245653629302978515625p969 {+ 4303176362235536 969 (9.75715e+291)}
; -1.34201423641818795573499301099218428134918212890625p834 > 1.955497095275323005125756026245653629302978515625p969 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000001 #b0101011110001110001111101011100000101110101110100100)))
(assert (= y (fp #b0 #b11111001000 #b1111010010011011011101010010011110100001011010010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

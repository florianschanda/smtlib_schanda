(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.197011006185003001434097313904203474521636962890625p-901 {+ 887258694042666 -901 (7.08063e-272)}
; Y = -1.7103662838702187176664892831468023359775543212890625p897 {- 3199205331334481 897 (-1.80715e+270)}
; 1.197011006185003001434097313904203474521636962890625p-901 < -1.7103662838702187176664892831468023359775543212890625p897 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111010 #b0011001001101111010100000011010010000100010000101010)))
(assert (= y (fp #b1 #b11110000000 #b1011010111011010100100001001010101100111010101010001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

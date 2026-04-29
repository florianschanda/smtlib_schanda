(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9606878094605744156098126040888018906116485595703125p-727 {+ 4326553260706021 -727 (2.77716e-219)}
; Y = -1.6082373395325533227406822334160096943378448486328125p2 {- 2739257455671629 2 (-6.43295)}
; 1.9606878094605744156098126040888018906116485595703125p-727 = -1.6082373395325533227406822334160096943378448486328125p2 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101000 #b1111010111101111101000101110001101001100100011100101)))
(assert (= y (fp #b1 #b10000000001 #b1001101110110101011100010011100101111111100101001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

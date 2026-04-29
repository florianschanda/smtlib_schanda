(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4843176078784436899837828605086542665958404541015625p-167 {+ 2181172598370329 -167 (7.93446e-051)}
; Y = -1.1181540536365319749023683471023105084896087646484375p-112 {- 532118551929799 -112 (-2.15349e-034)}
; 1.4843176078784436899837828605086542665958404541015625p-167 < -1.1181540536365319749023683471023105084896087646484375p-112 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011000 #b0111101111111100001111010001111010110111000000011001)))
(assert (= y (fp #b1 #b01110001111 #b0001111000111111010110000001010001000010001111000111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

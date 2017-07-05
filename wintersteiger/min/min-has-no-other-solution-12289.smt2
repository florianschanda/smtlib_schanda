(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.6203552746057978684035560945631004869937896728515625p-472 {- 2793831783551993 -472 (-1.32878e-142)}
; +oo m -1.6203552746057978684035560945631004869937896728515625p-472 == -1.6203552746057978684035560945631004869937896728515625p-472
; [HW: -1.6203552746057978684035560945631004869937896728515625p-472] 

; mpf : - 2793831783551993 -472
; mpfd: - 2793831783551993 -472 (-1.32878e-142) class: Neg. norm. non-zero
; hwf : - 2793831783551993 -472 (-1.32878e-142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b01000100111 #b1001111011001111100110100111000001010101001111111001)))
(assert (= r (fp #b1 #b01000100111 #b1001111011001111100110100111000001010101001111111001)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

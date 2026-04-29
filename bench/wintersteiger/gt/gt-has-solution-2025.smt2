(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7938318915978526124632708160788752138614654541015625p-981 {+ 3575101011194905 -981 (8.7772e-296)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.7938318915978526124632708160788752138614654541015625p-981 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101010 #b1100101100111000100100010001110011101111010000011001)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

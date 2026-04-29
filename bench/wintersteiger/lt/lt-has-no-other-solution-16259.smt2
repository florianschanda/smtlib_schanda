(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.676440613496248399627575054182671010494232177734375p3 {- 3046417694879974 3 (-13.4115)}
; -oo < -1.676440613496248399627575054182671010494232177734375p3 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10000000010 #b1010110100101011001101100100100010100111000011100110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

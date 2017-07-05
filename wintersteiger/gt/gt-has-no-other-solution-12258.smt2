(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.370624205249397764561081203282810747623443603515625p-200 {+ 1669143032655674 -200 (8.52942e-061)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.370624205249397764561081203282810747623443603515625p-200 > -oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110111 #b0101111011100001001110100101100010100110111100111010)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

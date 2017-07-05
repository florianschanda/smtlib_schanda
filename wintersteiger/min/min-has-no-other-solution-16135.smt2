(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.364991300841831733947628890746273100376129150390625p679 {- 1643774686464746 679 (-3.42371e+204)}
; -oo m -1.364991300841831733947628890746273100376129150390625p679 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b11010100110 #b0101110101110000000100011110010001110000101011101010)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.184192325036255599712831099168397486209869384765625p898 {- 829528486397786 898 (-2.50241e+270)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.184192325036255599712831099168397486209869384765625p898 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000001 #b0010111100100111001110100110110000110100011101011010)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

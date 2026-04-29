(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4306589578972630505404595169238746166229248046875p748 {+ 1939515522309880 748 (2.11823e+225)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.4306589578972630505404595169238746166229248046875p748 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101011 #b0110111000111111101010100101101111100101111011111000)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

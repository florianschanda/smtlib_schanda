(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.656147156150898691606698776013217866420745849609375p34 {+ 2955024087941398 34 (2.84524e+010)}
; -oo < 1.656147156150898691606698776013217866420745849609375p34 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b10000100001 #b1010011111111001010000101001000100001000000100010110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

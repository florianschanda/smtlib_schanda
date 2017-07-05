(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.0669155109402252978867409183294512331485748291015625p1018 {+ 301360670135705 1018 (2.99685e+306)}
; -oo < 1.0669155109402252978867409183294512331485748291015625p1018 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b11111111001 #b0001000100100001010111111111101100010101010110011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2763529345135058434834718354977667331695556640625p150 {- 1244582972897768 150 (-1.82167e+045)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.2763529345135058434834718354977667331695556640625p150 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010101 #b0100011010111111000100001101111111100011100111101000)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

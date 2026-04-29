(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = NaN {- 1786375484399264 1024 (-1.#SNAN)}
; Y = -1.4518700903176746663802987313829362392425537109375p-64 {- 2035041970374552 -64 (-7.8706e-020)}
; NaN = -1.4518700903176746663802987313829362392425537109375p-64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b01110111111 #b0111001110101101110000100001101111110100011110011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

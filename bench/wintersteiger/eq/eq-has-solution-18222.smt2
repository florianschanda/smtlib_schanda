(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.37657845328717787225514257443137466907501220703125p-184 {+ 1695958581899892 -184 (5.61412e-056)}
; Y = 1.499489419456158767474107662565074861049652099609375p-56 {+ 2249500363338262 -56 (2.08096e-017)}
; 1.37657845328717787225514257443137466907501220703125p-184 = 1.499489419456158767474107662565074861049652099609375p-56 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000111 #b0110000001100111011100100000110100111111001001110100)))
(assert (= y (fp #b0 #b01111000111 #b0111111111011110100010011110000101000011001000010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

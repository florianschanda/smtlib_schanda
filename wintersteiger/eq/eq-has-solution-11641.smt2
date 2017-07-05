(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2823801883327858863736992134363390505313873291015625p-381 {- 1271727310952345 -381 (-2.60369e-115)}
; Y = -1.111272814238521089436062538879923522472381591796875p375 {- 501128204741070 375 (-8.55203e+112)}
; -1.2823801883327858863736992134363390505313873291015625p-381 = -1.111272814238521089436062538879923522472381591796875p375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000010 #b0100100001001010000100010110100111101101011110011001)))
(assert (= y (fp #b1 #b10101110110 #b0001110001111100011000000000101000010110100111001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4129902378271825824640473001636564731597900390625p264 {- 1859942681186152 264 (-4.1885e+079)}
; Y = 1.6883165000215274442751933747786097228527069091796875p-108 {+ 3099901933009915 -108 (5.20253e-033)}
; -1.4129902378271825824640473001636564731597900390625p264 = 1.6883165000215274442751933747786097228527069091796875p-108 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000111 #b0110100110111001101110100110110100001000111101101000)))
(assert (= y (fp #b0 #b01110010011 #b1011000000110101100000101001100011100011101111111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

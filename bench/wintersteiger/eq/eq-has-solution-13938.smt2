(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7824888672221390617522729371557943522930145263671875p-108 {+ 3524016570843187 -108 (5.49272e-033)}
; Y = 1.2128848417422180006042253808118402957916259765625p415 {+ 958748093943080 415 (1.02628e+125)}
; 1.7824888672221390617522729371557943522930145263671875p-108 = 1.2128848417422180006042253808118402957916259765625p415 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010011 #b1100100001010001001100001011111000110100000000110011)))
(assert (= y (fp #b0 #b10110011110 #b0011011001111111100111101111100100011000110100101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0921681629911874633620527674793265759944915771484375p-313 {- 415088504502535 -313 (-6.54487e-095)}
; Y = -1.10988841244374469852118636481463909149169921875p-986 {- 494893413333984 -986 (-1.69708e-297)}
; -1.0921681629911874633620527674793265759944915771484375p-313 < -1.10988841244374469852118636481463909149169921875p-986 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000110 #b0001011110011000010101010010110111000111100100000111)))
(assert (= y (fp #b1 #b00000100101 #b0001110000100001101001011010000110100111101111100000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

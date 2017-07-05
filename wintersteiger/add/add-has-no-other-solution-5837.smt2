(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0939767132236386526500382387894205749034881591796875p-926 {+ 423233490655483 -926 (1.92856e-279)}
; Y = -1.2306589812140520390215669976896606385707855224609375p-230 {- 1038795701845263 -230 (-7.13245e-070)}
; 1.0939767132236386526500382387894205749034881591796875p-926 + -1.2306589812140520390215669976896606385707855224609375p-230 == -1.230658981214051816976962072658352553844451904296875p-230
; [HW: -1.230658981214051816976962072658352553844451904296875p-230] 

; mpf : - 1038795701845262 -230
; mpfd: - 1038795701845262 -230 (-7.13245e-070) class: Neg. norm. non-zero
; hwf : - 1038795701845262 -230 (-7.13245e-070) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100001 #b0001100000001110110110111001110111100001100011111011)))
(assert (= y (fp #b1 #b01100011001 #b0011101100001100011101111000110011010111110100001111)))
(assert (= r (fp #b1 #b01100011001 #b0011101100001100011101111000110011010111110100001110)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)

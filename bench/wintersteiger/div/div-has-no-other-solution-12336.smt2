(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9408953139869937754014017627923749387264251708984375p-314 {- 4237415785466471 -314 (-5.81545e-095)}
; Y = 1.9341072592908019611712688856641761958599090576171875p1011 {+ 4206845104866131 1011 (4.2443e+304)}
; -1.9408953139869937754014017627923749387264251708984375p-314 / 1.9341072592908019611712688856641761958599090576171875p1011 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011000101 #b1111000011011110100000111110101010001000101001100111)))
(assert (= y (fp #b0 #b11111110010 #b1110111100100001101001110100000110011100001101010011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

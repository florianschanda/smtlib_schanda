(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0640766135346175769171850333805195987224578857421875p-838 {- 288575412837667 -838 (-5.80546e-253)}
; Y = 1.8797256724797832827533738964120857417583465576171875p15 {+ 3961932210768211 15 (61594.9)}
; -1.0640766135346175769171850333805195987224578857421875p-838 + 1.8797256724797832827533738964120857417583465576171875p15 == 1.8797256724797832827533738964120857417583465576171875p15
; [HW: 1.8797256724797832827533738964120857417583465576171875p15] 

; mpf : + 3961932210768211 15
; mpfd: + 3961932210768211 15 (61594.9) class: Pos. norm. non-zero
; hwf : + 3961932210768211 15 (61594.9) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111001 #b0001000001100111010100110010111110010001110100100011)))
(assert (= y (fp #b0 #b10000001110 #b1110000100110101101100111010000011000000100101010011)))
(assert (= r (fp #b0 #b10000001110 #b1110000100110101101100111010000011000000100101010011)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

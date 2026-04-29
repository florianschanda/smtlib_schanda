(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6849579494940456481089086082647554576396942138671875p283 {- 3084776366105843 283 (-2.61865e+085)}
; Y = -1.2496618399806596055867657923954539000988006591796875p205 {- 1124376969505531 205 (-6.42601e+061)}
; -1.6849579494940456481089086082647554576396942138671875p283 > -1.2496618399806596055867657923954539000988006591796875p205 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011010 #b1010111101011001011001110111100000110110010011110011)))
(assert (= y (fp #b1 #b10011001100 #b0011111111101001110101101001110111000110101011111011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

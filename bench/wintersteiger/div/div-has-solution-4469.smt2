(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.84031650884254016631302874884568154811859130859375p-1022 {+ 3784449116096540 -1023 (1.86977e-308)}
; Y = -1.414560581021852225802604152704589068889617919921875p865 {- 1867014878212510 865 (-3.47991e+260)}
; 0.84031650884254016631302874884568154811859130859375p-1022 / -1.414560581021852225802604152704589068889617919921875p865 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1101011100011110111110111001001111000100100000011100)))
(assert (= y (fp #b1 #b11101100000 #b0110101000100000101001000110100110110011000110011110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)

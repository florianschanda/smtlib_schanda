(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8530928351875630699652219846029765903949737548828125p-554 {+ 3841988574663149 -554 (3.14253e-167)}
; Y = -1.7893192018639905160881653500837273895740509033203125p-706 {- 3554777663391045 -706 (-5.31509e-213)}
; 1.8530928351875630699652219846029765903949737548828125p-554 * -1.7893192018639905160881653500837273895740509033203125p-706 == -zero
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
(assert (= x (fp #b0 #b00111010101 #b1101101001100100010010101100001110010101000111101101)))
(assert (= y (fp #b1 #b00100111101 #b1100101000010000110100101011111000011100010101000101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

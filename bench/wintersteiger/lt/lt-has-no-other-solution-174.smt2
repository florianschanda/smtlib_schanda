(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.04858384504484103416643847594968974590301513671875p-90 {- 218802186440172 -90 (-8.47039e-028)}
; Y = -1.4567479636047451219127424337784759700298309326171875p85 {- 2057009958692563 85 (-5.63552e+025)}
; -1.04858384504484103416643847594968974590301513671875p-90 < -1.4567479636047451219127424337784759700298309326171875p85 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100101 #b0000110001101111111111011010100110010100110111101100)))
(assert (= y (fp #b1 #b10001010100 #b0111010011101101011011110011111000110010011011010011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

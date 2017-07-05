(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1920839803182163851857922054477967321872711181640625p-124 {+ 865069342184961 -124 (5.60515e-038)}
; Y = -1.6423625812440849625062355698901228606700897216796875p-305 {- 2892943881527611 -305 (-2.51953e-092)}
; 1.1920839803182163851857922054477967321872711181640625p-124 = -1.6423625812440849625062355698901228606700897216796875p-305 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000011 #b0011000100101100011010100110110110001101011000000001)))
(assert (= y (fp #b1 #b01011001110 #b1010010001110001110111111100011010011110000100111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9887116530158397420535720812040381133556365966796875 994 {- 4452761432099003 994 (-3.32957e+299)}
; -1.9887116530158397420535720812040381133556365966796875 994 I == -1.9887116530158397420535720812040381133556365966796875 994
; [HW: -1.9887116530158397420535720812040381133556365966796875 994] 

; mpf : - 4452761432099003 994
; mpfd: - 4452761432099003 994 (-3.32957e+299) class: Neg. norm. non-zero
; hwf : - 4452761432099003 994 (-3.32957e+299) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100001 #b1111110100011100001101001111011011100000100010111011)))
(assert (= r (fp #b1 #b11111100001 #b1111110100011100001101001111011011100000100010111011)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0939158324872828575990979516063816845417022705078125p215 {- 422959308193917 215 (-5.76014e+064)}
; Y = 1.4318326134861687481958369971835054457187652587890625p-239 {+ 1944801197182737 -239 (1.62078e-072)}
; -1.0939158324872828575990979516063816845417022705078125p215 < 1.4318326134861687481958369971835054457187652587890625p-239 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010110 #b0001100000001010110111100011010100011100000001111101)))
(assert (= y (fp #b0 #b01100010000 #b0110111010001100100101010000100001000100111100010001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

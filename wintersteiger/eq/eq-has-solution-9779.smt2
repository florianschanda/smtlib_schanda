(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8800387851998017207932889505173079669475555419921875p695 {+ 3963342345097411 695 (3.09039e+209)}
; Y = -1.001672357150318770635522014345042407512664794921875p996 {- 7531627039006 996 (-6.70813e+299)}
; 1.8800387851998017207932889505173079669475555419921875p695 = -1.001672357150318770635522014345042407512664794921875p996 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110110 #b1110000101001010001110001100100110100101000011000011)))
(assert (= y (fp #b1 #b11111100011 #b0000000001101101100110010111111101000100100100011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

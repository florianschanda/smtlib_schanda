(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5298375653496829595923145461711101233959197998046875p325 {+ 2386176261875723 325 (1.04567e+098)}
; Y = -1.457750036929280401665209865313954651355743408203125p921 {- 2061522895743538 921 (-2.5841e+277)}
; 1.5298375653496829595923145461711101233959197998046875p325 < -1.457750036929280401665209865313954651355743408203125p921 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000100 #b1000011110100011011011110100011101011110100000001011)))
(assert (= y (fp #b1 #b11110011000 #b0111010100101111000110110011111001011010101000110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

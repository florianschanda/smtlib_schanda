(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9711969769301853627752052489086054265499114990234375p34 {+ 4373882343406135 34 (3.38649e+010)}
; Y = 1.8175857562652424359583847035537473857402801513671875p758 {+ 3682078907259571 758 (2.7557e+228)}
; 1.9711969769301853627752052489086054265499114990234375p34 < 1.8175857562652424359583847035537473857402801513671875p758 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100001 #b1111100010100000010111010111010111100011101000110111)))
(assert (= y (fp #b0 #b11011110101 #b1101000101001101010011001101010011010101101010110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

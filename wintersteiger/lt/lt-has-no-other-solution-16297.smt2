(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8227336200937156451828968783956952393054962158203125p896 {+ 3705262824879237 896 (9.6294e+269)}
; Y = 1.723813073881193869141270624822936952114105224609375p260 {+ 3259764289817238 260 (3.19366e+078)}
; 1.8227336200937156451828968783956952393054962158203125p896 < 1.723813073881193869141270624822936952114105224609375p260 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101111111 #b1101001010011110101010111010011110011111010010000101)))
(assert (= y (fp #b0 #b10100000011 #b1011100101001011110100000100100010111100101010010110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

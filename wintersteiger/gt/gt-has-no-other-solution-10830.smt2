(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.148315971607727359327100202790461480617523193359375p-260 {+ 667955754465654 -260 (6.19816e-079)}
; Y = -1.6730931318815300823388270146097056567668914794921875p-210 {- 3031341977927299 -210 (-1.01677e-063)}
; 1.148315971607727359327100202790461480617523193359375p-260 > -1.6730931318815300823388270146097056567668914794921875p-210 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111011 #b0010010111111000000010010001011110000111100101110110)))
(assert (= y (fp #b1 #b01100101101 #b1010110001001111110101001101110010010111111010000011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

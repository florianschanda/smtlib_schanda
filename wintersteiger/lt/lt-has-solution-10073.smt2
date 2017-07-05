(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.509429699047037498615964068449102342128753662109375p568 {+ 2294267402799702 568 (1.45831e+171)}
; Y = 1.5950846607712134694878614027402363717555999755859375p-157 {+ 2680023056503135 -157 (8.73121e-048)}
; 1.509429699047037498615964068449102342128753662109375p568 < 1.5950846607712134694878614027402363717555999755859375p-157 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110111 #b1000001001101001111111000001100100000100101001010110)))
(assert (= y (fp #b0 #b01101100010 #b1001100001010111011101111110010001011101000101011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

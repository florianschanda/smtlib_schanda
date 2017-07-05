(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.765396651436893282749451827839948236942291259765625p-407 {+ 3447040074201818 -407 (5.34114e-123)}
; Y = -1.088688588132188161949898130842484533786773681640625p-983 {- 399417892464138 -983 (-1.33174e-296)}
; 1.765396651436893282749451827839948236942291259765625p-407 = -1.088688588132188161949898130842484533786773681640625p-983 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001101000 #b1100001111110001000010001111001001100011101011011010)))
(assert (= y (fp #b1 #b00000101000 #b0001011010110100010010111001100110001110011000001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.62957753436098595756220674957148730754852294921875p560 {+ 2835365149148972 560 (6.14996e+168)}
; Y = -1.858988869005126165490082712494768202304840087890625p155 {- 3868541950366890 155 (-8.49036e+046)}
; 1.62957753436098595756220674957148730754852294921875p560 M -1.858988869005126165490082712494768202304840087890625p155 == 1.62957753436098595756220674957148730754852294921875p560
; [HW: 1.62957753436098595756220674957148730754852294921875p560] 

; mpf : + 2835365149148972 560
; mpfd: + 2835365149148972 560 (6.14996e+168) class: Pos. norm. non-zero
; hwf : + 2835365149148972 560 (6.14996e+168) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101111 #b1010000100101011111111100100100001100000011100101100)))
(assert (= y (fp #b1 #b10010011010 #b1101101111100110101100011100110000000001010010101010)))
(assert (= r (fp #b0 #b11000101111 #b1010000100101011111111100100100001100000011100101100)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)

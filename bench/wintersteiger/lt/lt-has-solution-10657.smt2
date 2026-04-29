(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.794980770320921958926874140161089599132537841796875p-39 {- 3580275100984014 -39 (-3.26505e-012)}
; Y = -1.33158086056926361351315790670923888683319091796875p561 {- 1493307440102924 561 (-1.00507e+169)}
; -1.794980770320921958926874140161089599132537841796875p-39 < -1.33158086056926361351315790670923888683319091796875p561 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011000 #b1100101110000011110111000001100101111010001011001110)))
(assert (= y (fp #b1 #b11000110000 #b0101010011100010011110111011100000011111111000001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

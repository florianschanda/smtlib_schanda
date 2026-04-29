(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.12251801818470209326505937497131526470184326171875p707 {- 551772101042796 707 (-7.55788e+212)}
; Y = 1.7635477971203152858237217515124939382076263427734375p288 {+ 3438713574590615 288 (8.77053e+086)}
; -1.12251801818470209326505937497131526470184326171875p707 > 1.7635477971203152858237217515124939382076263427734375p288 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000010 #b0001111101011101010101110100000101000110001001101100)))
(assert (= y (fp #b0 #b10100011111 #b1100001101110111110111100101000110010000100010010111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

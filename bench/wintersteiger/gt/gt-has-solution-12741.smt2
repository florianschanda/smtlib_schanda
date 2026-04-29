(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3365482439088041122232652924139983952045440673828125p894 {- 1515678545859885 894 (-1.76523e+269)}
; Y = -1.371452872439522518988042065757326781749725341796875p207 {- 1672875017904334 207 (-2.82091e+062)}
; -1.3365482439088041122232652924139983952045440673828125p894 > -1.371452872439522518988042065757326781749725341796875p207 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111101 #b0101011000101000000001101001010100011101010100101101)))
(assert (= y (fp #b1 #b10011001110 #b0101111100010111100010010001001100100010000011001110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

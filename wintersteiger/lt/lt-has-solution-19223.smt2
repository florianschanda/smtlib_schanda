(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8355516515870287097556001754128374159336090087890625p38 {- 3762990106736145 38 (-5.04553e+011)}
; Y = -1.5138825764463079703858738866983912885189056396484375p-396 {- 2314321379795783 -396 (-9.38024e-120)}
; -1.8355516515870287097556001754128374159336090087890625p38 < -1.5138825764463079703858738866983912885189056396484375p-396 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100101 #b1101010111100110101101101000100110101111011000010001)))
(assert (= y (fp #b1 #b01001110011 #b1000001110001101110011101111101111010010001101000111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1462716242875610195284252768033184111118316650390625p-747 {+ 658748832636337 -747 (1.54839e-225)}
; Y = 1.02976708786924664451589706004597246646881103515625p-554 {+ 134059045835844 -554 (1.74631e-167)}
; 1.1462716242875610195284252768033184111118316650390625p-747 > 1.02976708786924664451589706004597246646881103515625p-554 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010100 #b0010010101110010000011101010001010100101110110110001)))
(assert (= y (fp #b0 #b00111010101 #b0000011110011110110100001101110011100101010001000100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

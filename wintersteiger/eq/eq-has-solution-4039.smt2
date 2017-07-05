(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5960895347252541665028502393397502601146697998046875p-516 {- 2684548606468107 -516 (-7.44011e-156)}
; Y = 1.9336271769340294124361889771535061299800872802734375p271 {+ 4204683006143063 271 (7.33671e+081)}
; -1.5960895347252541665028502393397502601146697998046875p-516 = 1.9336271769340294124361889771535061299800872802734375p271 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111011 #b1001100010011001010100101110000100100010000000001011)))
(assert (= y (fp #b0 #b10100001110 #b1110111100000010001100001100111110010110101001010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

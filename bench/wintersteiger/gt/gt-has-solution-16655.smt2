(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9584032537845932342435162354377098381519317626953125p988 {+ 4316264536614965 988 (5.12316e+297)}
; Y = -1.006665090986089250435497888247482478618621826171875p319 {- 30016901281342 319 (-1.07511e+096)}
; 1.9584032537845932342435162354377098381519317626953125p988 > -1.006665090986089250435497888247482478618621826171875p319 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011011 #b1111010101011001111010100110011101100010100000110101)))
(assert (= y (fp #b1 #b10100111110 #b0000000110110100110011011010101111001111011000111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

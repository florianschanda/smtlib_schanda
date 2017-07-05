(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4143055081717286203257799570565111935138702392578125p709 {- 1865866132219741 709 (-3.80899e+213)}
; Y = 1.1426292185379940402611964600509963929653167724609375p-828 {+ 642344895459855 -828 (6.38365e-250)}
; -1.4143055081717286203257799570565111935138702392578125p709 = 1.1426292185379940402611964600509963929653167724609375p-828 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000100 #b0110101000001111111011010000000000100110011101011101)))
(assert (= y (fp #b0 #b00011000011 #b0010010010000011010110010011010100010011001000001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

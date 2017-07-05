(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6020797596750153690692286545527167618274688720703125p-784 {+ 2711526181319717 -784 (1.57459e-236)}
; Y = 1.2416323833836191425916695152409374713897705078125p240 {+ 1088215511767112 240 (2.19377e+072)}
; 1.6020797596750153690692286545527167618274688720703125p-784 > 1.2416323833836191425916695152409374713897705078125p240 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101111 #b1001101000100001111001100010110101100011010000100101)))
(assert (= y (fp #b0 #b10011101111 #b0011110111011011100111101011000001001001100001001000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

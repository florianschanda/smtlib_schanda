(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.615932802253091882249691479955799877643585205078125p-737 {- 2773914738712290 -737 (-2.2352e-222)}
; Y = -1.9670200869936760312839396647177636623382568359375p-85 {- 4355071303444504 -85 (-5.08463e-026)}
; -1.615932802253091882249691479955799877643585205078125p-737 > -1.9670200869936760312839396647177636623382568359375p-85 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100011110 #b1001110110101101110001011010101000110101111011100010)))
(assert (= y (fp #b1 #b01110101010 #b1111011110001110101000001110000000110110100000011000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

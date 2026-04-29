(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.24274196362642896929173730313777923583984375p-830 {+ 1093212616935168 -830 (1.73574e-250)}
; Y = -1.4665136646630887451436819901573471724987030029296875p-274 {- 2100990766339931 -274 (-4.83134e-083)}
; 1.24274196362642896929173730313777923583984375p-830 > -1.4665136646630887451436819901573471724987030029296875p-274 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000001 #b0011111000100100010101100101101100100100011100000000)))
(assert (= y (fp #b1 #b01011101101 #b0111011101101101011100001000010011011101011101011011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

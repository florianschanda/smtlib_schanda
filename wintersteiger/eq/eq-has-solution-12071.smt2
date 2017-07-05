(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5647761106235240635697891775635071098804473876953125p-383 {- 2543525481351861 -383 (-7.94262e-116)}
; Y = 1.522834178758531553654620438464917242527008056640625p-761 {+ 2354635812633482 -761 (1.25553e-229)}
; -1.5647761106235240635697891775635071098804473876953125p-383 = 1.522834178758531553654620438464917242527008056640625p-761 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000000 #b1001000010010101001010101100110010110000101010110101)))
(assert (= y (fp #b0 #b00100000110 #b1000010111011000011101011111001011111111101110001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

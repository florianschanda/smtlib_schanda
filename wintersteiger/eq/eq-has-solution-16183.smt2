(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.87771547631512536469244878389872610569000244140625p-879 {- 3952879092070116 -879 (-4.65869e-265)}
; Y = 1.07187327726946346473368976148776710033416748046875p449 {+ 323688464728652 449 (1.55816e+135)}
; -1.87771547631512536469244878389872610569000244140625p-879 = 1.07187327726946346473368976148776710033416748046875p449 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010010000 #b1110000010110001111101100010000111110111011011100100)))
(assert (= y (fp #b0 #b10111000000 #b0001001001100110010010010111111101010100001001001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

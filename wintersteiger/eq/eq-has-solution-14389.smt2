(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.708281698154606065287453020573593676090240478515625p-266 {+ 3189817191882426 -266 (1.44072e-080)}
; Y = 1.259134721490249742004152722074650228023529052734375p452 {+ 1167039035142246 452 (1.4643e+136)}
; 1.708281698154606065287453020573593676090240478515625p-266 = 1.259134721490249742004152722074650228023529052734375p452 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110101 #b1011010101010001111100110000100111101101111010111010)))
(assert (= y (fp #b0 #b10111000011 #b0100001001010110101001110011001000001111000001100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

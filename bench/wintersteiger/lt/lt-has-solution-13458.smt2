(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0177014407794497952153278674813918769359588623046875p-485 {+ 79720202098251 -485 (1.01876e-146)}
; Y = -1.433005507939700162722829190897755324840545654296875p432 {- 1950083444206606 432 (-1.5893e+130)}
; 1.0177014407794497952153278674813918769359588623046875p-485 < -1.433005507939700162722829190897755324840545654296875p432 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000011010 #b0000010010001000000101001110010100111101011001001011)))
(assert (= y (fp #b1 #b10110101111 #b0110111011011001011100101110111110010110110000001110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

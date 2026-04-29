(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.706529253137968993314643739722669124603271484375p-458 {- 3181924881158512 -458 (-2.29285e-138)}
; Y = -1.8938845290266212995078376479796133935451507568359375p-660 {- 4025698031836543 -660 (-3.95873e-199)}
; -1.706529253137968993314643739722669124603271484375p-458 < -1.8938845290266212995078376479796133935451507568359375p-660 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000110101 #b1011010011011111000110011110001111100101000101110000)))
(assert (= y (fp #b1 #b00101101011 #b1110010011010101100111011101001010010001110101111111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

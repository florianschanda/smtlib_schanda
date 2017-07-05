(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.74351531729792963432146279956214129924774169921875p113 {- 3348495305927212 113 (-1.81057e+034)}
; Y = -1.3795128876644591198186162728234194219112396240234375p-195 {- 1709174099467959 -195 (-2.74711e-059)}
; -1.74351531729792963432146279956214129924774169921875p113 < -1.3795128876644591198186162728234194219112396240234375p-195 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110000 #b1011111001010111000001010001001111011110101000101100)))
(assert (= y (fp #b1 #b01100111100 #b0110000100100111110000011011000011101101111010110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

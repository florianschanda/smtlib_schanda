(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5316612870180612571147094058687798678874969482421875p873 {- 2394389574101859 873 (-9.64604e+262)}
; Y = 1.6447985267620930383003496899618767201900482177734375p-4 {+ 2903914404854807 -4 (0.1028)}
; -1.5316612870180612571147094058687798678874969482421875p873 < 1.6447985267620930383003496899618767201900482177734375p-4 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101000 #b1000100000011010111101000100000001001010101101100011)))
(assert (= y (fp #b0 #b01111111011 #b1010010100010001100001000010100011110011110000010111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

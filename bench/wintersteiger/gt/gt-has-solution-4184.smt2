(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9119060668226481869425015247543342411518096923828125p-32 {+ 4106859822739373 -32 (4.4515e-010)}
; Y = 1.99229958308182997228641397668980062007904052734375p-972 {+ 4468920032607228 -972 (4.99113e-293)}
; 1.9119060668226481869425015247543342411518096923828125p-32 > 1.99229958308182997228641397668980062007904052734375p-972 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011111 #b1110100101110010101011010000111000000110111110101101)))
(assert (= y (fp #b0 #b00000110011 #b1111111000000111010110000111000100101011101111111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

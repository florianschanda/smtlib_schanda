(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1927222394525192061820462186005897819995880126953125p669 {+ 867943805784373 669 (2.9215e+201)}
; Y = -1.56215526020013495411831172532401978969573974609375p-722 {- 2531722220361692 -722 (-7.08056e-218)}
; 1.1927222394525192061820462186005897819995880126953125p669 < -1.56215526020013495411831172532401978969573974609375p-722 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011100 #b0011000101010110001111101010001110101001000100110101)))
(assert (= y (fp #b1 #b00100101101 #b1000111111101001011010000011100111010101011111011100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9515604031042574906251729771611280739307403564453125p750 {+ 4285447076840853 750 (1.15579e+226)}
; Y = -1.1192876354036955799386987564503215253353118896484375p-787 {- 537223750353991 -787 (-1.3751e-237)}
; 1.9515604031042574906251729771611280739307403564453125p750 < -1.1192876354036955799386987564503215253353118896484375p-787 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101101 #b1111001110011001011101100110101110000000010110010101)))
(assert (= y (fp #b1 #b00011101100 #b0001111010001001101000100110110011100000010001000111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

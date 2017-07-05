(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.307309404030587263179086221498437225818634033203125p-856 {+ 1383998517479602 -856 (2.72083e-258)}
; Y = -1.8886459408615206001513797673396766185760498046875p63 {- 4002105528128248 63 (-1.74197e+019)}
; 1.307309404030587263179086221498437225818634033203125p-856 > -1.8886459408615206001513797673396766185760498046875p63 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100111 #b0100111010101011110101000100000000010000100010110010)))
(assert (= y (fp #b1 #b10000111110 #b1110001101111110010011001110010110111001001011111000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

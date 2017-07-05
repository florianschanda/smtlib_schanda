(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0676258184551967733710853281081654131412506103515625p-83 {+ 304559610795449 -83 (1.1039e-025)}
; Y = 1.41332303152630966991409877664409577846527099609375p829 {+ 1861441450765532 829 (5.0595e+249)}
; 1.0676258184551967733710853281081654131412506103515625p-83 < 1.41332303152630966991409877664409577846527099609375p829 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101100 #b0001000101001111111011001111011010100001010110111001)))
(assert (= y (fp #b0 #b11100111100 #b0110100111001111100010011100011100010110110011011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

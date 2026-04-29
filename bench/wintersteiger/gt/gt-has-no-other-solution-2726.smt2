(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.22712442164392232513137059868313372135162353515625p370 {+ 1022877460682308 370 (2.95112e+111)}
; Y = -1.7307802766510673730948610682389698922634124755859375p65 {- 3291141781615455 65 (-6.38545e+019)}
; 1.22712442164392232513137059868313372135162353515625p370 > -1.7307802766510673730948610682389698922634124755859375p65 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110001 #b0011101000100100110100110111101100010101011001000100)))
(assert (= y (fp #b1 #b10001000000 #b1011101100010100011010101000110011000111001101011111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

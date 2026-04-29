(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.97204630863627716763630814966745674610137939453125p-996 {+ 4377707393361204 -996 (2.9447e-300)}
; Y = 1.749911384047653228890339960344135761260986328125p443 {+ 3377300629757904 443 (3.9747e+133)}
; 1.97204630863627716763630814966745674610137939453125p-996 = 1.749911384047653228890339960344135761260986328125p443 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011011 #b1111100011011000000001101110000111001010010100110100)))
(assert (= y (fp #b0 #b10110111010 #b1011111111111010001100010100010101100001111111010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

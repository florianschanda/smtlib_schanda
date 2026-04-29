(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7521747735927599709526703009032644331455230712890625p123 {+ 3387494030069841 123 (1.86323e+037)}
; Y = 1.629112474655842301984876030473969876766204833984375p474 {+ 2833270706434182 474 (7.94637e+142)}
; 1.7521747735927599709526703009032644331455230712890625p123 < 1.629112474655842301984876030473969876766204833984375p474 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111010 #b1100000010001110100001101010010101110101000001010001)))
(assert (= y (fp #b0 #b10111011001 #b1010000100001101100000111110000000100111000010000110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

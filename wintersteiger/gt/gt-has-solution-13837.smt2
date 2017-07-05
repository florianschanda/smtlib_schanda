(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.71948254649652820802430142066441476345062255859375p116 {+ 3240261328301340 116 (1.42849e+035)}
; Y = -1.3531179600107334781711188043118454515933990478515625p-732 {- 1590301913122169 -732 (-5.98934e-221)}
; 1.71948254649652820802430142066441476345062255859375p116 > -1.3531179600107334781711188043118454515933990478515625p-732 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001110011 #b1011100000110000000000100001011100111110110100011100)))
(assert (= y (fp #b1 #b00100100011 #b0101101001100101111100000100100111100000010101111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

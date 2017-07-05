(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7257154982351023964071146110654808580875396728515625p-258 {+ 3268332047428601 -258 (3.72589e-078)}
; Y = -1.6266623775009658725565486747655086219310760498046875p-270 {- 2822236449800459 -270 (-8.5743e-082)}
; 1.7257154982351023964071146110654808580875396728515625p-258 > -1.6266623775009658725565486747655086219310760498046875p-270 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111101 #b1011100111001000011111011010101100011110101111111001)))
(assert (= y (fp #b1 #b01011110001 #b1010000001101100111100100001000100000000000100001011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

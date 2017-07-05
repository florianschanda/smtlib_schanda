(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.744047333744834116231459120172075927257537841796875p478 {+ 3350891294999246 478 (1.36112e+144)}
; Y = -1.1412565134817944656475674491957761347293853759765625p-756 {- 636162781480265 -756 (-3.01097e-228)}
; 1.744047333744834116231459120172075927257537841796875p478 > -1.1412565134817944656475674491957761347293853759765625p-756 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111011101 #b1011111001111001111000101101010100011100001011001110)))
(assert (= y (fp #b1 #b00100001011 #b0010010000101001011000110000100111000000010101001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

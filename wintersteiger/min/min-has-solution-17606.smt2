(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.35402904717824501545919702039100229740142822265625p663 {- 1594405084950276 663 (-5.18221e+199)}
; Y = 1.0597430758549617468844417089712806046009063720703125p106 {+ 269058894158373 106 (8.59766e+031)}
; -1.35402904717824501545919702039100229740142822265625p663 m 1.0597430758549617468844417089712806046009063720703125p106 == -1.35402904717824501545919702039100229740142822265625p663
; [HW: -1.35402904717824501545919702039100229740142822265625p663] 

; mpf : - 1594405084950276 663
; mpfd: - 1594405084950276 663 (-5.18221e+199) class: Neg. norm. non-zero
; hwf : - 1594405084950276 663 (-5.18221e+199) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010110 #b0101101010100001101001011100101101110110111100000100)))
(assert (= y (fp #b0 #b10001101001 #b0000111101001011010100100111110011110101101000100101)))
(assert (= r (fp #b1 #b11010010110 #b0101101010100001101001011100101101110110111100000100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3256378332084450821781729246140457689762115478515625p-502 {- 1466542424295289 -502 (-1.01243e-151)}
; Y = -1.8954229515217255741532653701142407953739166259765625p0 {- 4032626470812233 0 (-1.89542)}
; -1.3256378332084450821781729246140457689762115478515625p-502 > -1.8954229515217255741532653701142407953739166259765625p0 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001001 #b0101001101011101000000000100001111111000011101111001)))
(assert (= y (fp #b1 #b01111111111 #b1110010100111010011100000100010011011111101001001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

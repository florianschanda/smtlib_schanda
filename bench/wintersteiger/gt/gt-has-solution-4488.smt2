(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.09926954728623638146700614015571773052215576171875p-498 {+ 447070296167532 -498 (1.34328e-150)}
; Y = -1.9851734490577948033518396186991594731807708740234375p1008 {- 4436826778071991 1008 (-5.44545e+303)}
; 1.09926954728623638146700614015571773052215576171875p-498 > -1.9851734490577948033518396186991594731807708740234375p1008 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001101 #b0001100101101001101110101010001100010101010001101100)))
(assert (= y (fp #b1 #b11111101111 #b1111110000110100010100111100000010010111001110110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.65409129390843734341842719004489481449127197265625p22 {- 2945765307512324 22 (-6.93776e+006)}
; Y = -1.1710430469755965798839270064490847289562225341796875p663 {- 770309402623611 663 (-4.48188e+199)}
; -1.65409129390843734341842719004489481449127197265625p22 > -1.1710430469755965798839270064490847289562225341796875p663 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000010101 #b1010011101110010100001101110101111101111011000000100)))
(assert (= y (fp #b1 #b11010010110 #b0010101111001001011110100010010011110111111001111011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

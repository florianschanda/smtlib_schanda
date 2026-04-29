(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.461799963683194647501295548863708972930908203125p-62 {- 2079762144363344 -62 (-3.16977e-019)}
; Y = -1.4145476311016251802499255063594318926334381103515625p330 {- 1866956556956601 330 (-3.09397e+099)}
; -1.461799963683194647501295548863708972930908203125p-62 > -1.4145476311016251802499255063594318926334381103515625p330 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000001 #b0111011000111000100001011011110101010000001101010000)))
(assert (= y (fp #b1 #b10101001001 #b0110101000011111110010110010011000110111001110111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

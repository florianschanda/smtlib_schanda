(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1180748838251683974220895834150724112987518310546875p87 {- 531762002796843 87 (-1.73014e+026)}
; Y = -1.1291631397028825123385331608005799353122711181640625p-1011 {- 581699067835905 -1011 (-5.14554e-305)}
; -1.1180748838251683974220895834150724112987518310546875p87 > -1.1291631397028825123385331608005799353122711181640625p-1011 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010110 #b0001111000111010001001111101010010000010000100101011)))
(assert (= y (fp #b1 #b00000001100 #b0010000100010000110101011110010011011111011000000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

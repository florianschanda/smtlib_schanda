(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9562296042578584120974483084864914417266845703125p-609 {+ 4306475289416328 -609 (9.20773e-184)}
; Y = 1.8931805405116299834133997137541882693767547607421875p270 {+ 4022527549422755 270 (3.59162e+081)}
; 1.9562296042578584120974483084864914417266845703125p-609 < 1.8931805405116299834133997137541882693767547607421875p270 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011110 #b1111010011001011011101101001110111000001001010001000)))
(assert (= y (fp #b0 #b10100001101 #b1110010010100111011110101101101011101011110010100011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

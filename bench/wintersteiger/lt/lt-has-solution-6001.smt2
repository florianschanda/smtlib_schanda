(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8460606156433747582212845372851006686687469482421875p-385 {- 3810318273344355 -385 (-2.3426e-116)}
; Y = 1.891874134014884578647297530551441013813018798828125p666 {+ 4016644017610818 666 (5.79254e+200)}
; -1.8460606156433747582212845372851006686687469482421875p-385 < 1.891874134014884578647297530551441013813018798828125p666 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111110 #b1101100010010111011011011011001010011111001101100011)))
(assert (= y (fp #b0 #b11010011001 #b1110010001010001110111001111110110111110000001000010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

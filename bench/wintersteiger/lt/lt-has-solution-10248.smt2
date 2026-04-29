(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.81345956649789030734609696082770824432373046875p565 {- 3663496200560864 565 (-2.19006e+170)}
; Y = -1.1343260093888896111735675731324590742588043212890625p862 {- 604950565829969 862 (-3.48814e+259)}
; -1.81345956649789030734609696082770824432373046875p565 < -1.1343260093888896111735675731324590742588043212890625p862 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110100 #b1101000000111110111000101101101010111010000011100000)))
(assert (= y (fp #b1 #b11101011101 #b0010001001100011001100000111100101010011110101010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

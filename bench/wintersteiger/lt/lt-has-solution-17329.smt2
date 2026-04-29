(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5346576502610125292136444841162301599979400634765625p-694 {- 2407883994486281 -694 (-1.86722e-209)}
; Y = -1.256150015171839218197646914632059633731842041015625p-790 {- 1153597112878842 -790 (-1.92906e-238)}
; -1.5346576502610125292136444841162301599979400634765625p-694 < -1.256150015171839218197646914632059633731842041015625p-790 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001001 #b1000100011011111010100101110001001101101011000001001)))
(assert (= y (fp #b1 #b00011101001 #b0100000110010011000011000010001000001000011011111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.40429410760592343621055988478474318981170654296875p925 {- 1820778792362124 925 (-3.98294e+278)}
; Y = -1.4872178555364163887730910573736764490604400634765625p-811 {- 2194234152642057 -811 (-1.08905e-244)}
; -1.40429410760592343621055988478474318981170654296875p925 = -1.4872178555364163887730910573736764490604400634765625p-811 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011100 #b0110011101111111110100011001001000100010000010001100)))
(assert (= y (fp #b1 #b00011010100 #b0111110010111010010011110011001110001110011000001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

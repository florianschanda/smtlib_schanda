(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7231293791944175541885897473548538982868194580078125p861 {- 3256685202680637 861 (-2.64938e+259)}
; Y = -1.3041760207214487810034597714547999203205108642578125p-349 {- 1369887013576157 -349 (-1.13728e-105)}
; -1.7231293791944175541885897473548538982868194580078125p861 < -1.3041760207214487810034597714547999203205108642578125p-349 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011100 #b1011100100011111000000011100101001101010101100111101)))
(assert (= y (fp #b1 #b01010100010 #b0100110111011110011110101100110100111001110111011101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

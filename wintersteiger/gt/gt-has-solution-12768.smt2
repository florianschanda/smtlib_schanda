(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0621466334900364625326574241626076400279998779296875p-349 {- 279883555428059 -349 (-9.26224e-106)}
; Y = 1.511960244666017416648173821158707141876220703125p-839 {+ 2305663967106384 -839 (4.12453e-253)}
; -1.0621466334900364625326574241626076400279998779296875p-349 > 1.511960244666017416648173821158707141876220703125p-839 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100010 #b0000111111101000110101110111111001100101011011011011)))
(assert (= y (fp #b0 #b00010111000 #b1000001100001111110100111001101110110001010101010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

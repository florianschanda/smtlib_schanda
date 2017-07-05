(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.728134843399211195702491750125773251056671142578125p332 {- 3279227809408162 332 (-1.51195e+100)}
; Y = -1.079803283674994229812682533520273864269256591796875p41 {- 359402038621646 41 (-2.37451e+012)}
; -1.728134843399211195702491750125773251056671142578125p332 < -1.079803283674994229812682533520273864269256591796875p41 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001011 #b1011101001100111000010111000101101111010010010100010)))
(assert (= y (fp #b1 #b10000101000 #b0001010001101101111111001110110101111111010111001110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

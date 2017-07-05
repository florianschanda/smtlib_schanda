(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0657509161556724119890304791624657809734344482421875p627 {- 296115801497955 627 (-5.93558e+188)}
; Y = -1.058695433345353098530949864652939140796661376953125p746 {- 264340731742482 746 (-3.91875e+224)}
; -1.0657509161556724119890304791624657809734344482421875p627 > -1.058695433345353098530949864652939140796661376953125p746 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001110010 #b0001000011010101000011010101001010010010000101100011)))
(assert (= y (fp #b1 #b11011101001 #b0000111100000110101010011111011010100100100100010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

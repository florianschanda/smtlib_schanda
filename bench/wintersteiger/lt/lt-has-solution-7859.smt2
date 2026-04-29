(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.913366343178688477877358309342525899410247802734375p-687 {- 4113436322792294 -687 (-2.97983e-207)}
; Y = -1.877919225793231117194181933882646262645721435546875p665 {- 3953796698143790 665 (-2.87491e+200)}
; -1.913366343178688477877358309342525899410247802734375p-687 < -1.877919225793231117194181933882646262645721435546875p665 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010000 #b1110100111010010011000000110110100111000001101100110)))
(assert (= y (fp #b1 #b11010011000 #b1110000010111111010100000111101101001111110000101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

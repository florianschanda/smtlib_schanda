(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5955399522199795736554506220272742211818695068359375p86 {- 2682073506902143 86 (-1.23449e+026)}
; Y = -1.18486684076209325411355166579596698284149169921875p-807 {- 832566235169324 -807 (-1.38824e-243)}
; -1.5955399522199795736554506220272742211818695068359375p86 < -1.18486684076209325411355166579596698284149169921875p-807 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010101 #b1001100001110101010011100110101000111111000001111111)))
(assert (= y (fp #b1 #b00011011000 #b0010111101010011011011101110101100110000001000101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

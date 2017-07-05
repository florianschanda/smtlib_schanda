(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.830139187189371074993005095166154205799102783203125p-920 {- 3738614534091698 -920 (-2.06485e-277)}
; Y = -1.8174552338858889211081759640364907681941986083984375p-668 {- 3681491086720551 -668 (-1.48398e-201)}
; -1.830139187189371074993005095166154205799102783203125p-920 + -1.8174552338858889211081759640364907681941986083984375p-668 == -1.8174552338858889211081759640364907681941986083984375p-668
; [HW: -1.8174552338858889211081759640364907681941986083984375p-668] 

; mpf : - 3681491086720551 -668
; mpfd: - 3681491086720551 -668 (-1.48398e-201) class: Neg. norm. non-zero
; hwf : - 3681491086720551 -668 (-1.48398e-201) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100111 #b1101010010000100000000000111010000011011001110110010)))
(assert (= y (fp #b1 #b00101100011 #b1101000101000100101111110000011101111011111000100111)))
(assert (= r (fp #b1 #b00101100011 #b1101000101000100101111110000011101111011111000100111)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

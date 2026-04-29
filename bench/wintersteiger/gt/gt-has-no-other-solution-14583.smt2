(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6967440107929705472855630432604812085628509521484375p-222 {- 3137856067379847 -222 (-2.51743e-067)}
; Y = 1.71089609588600399803226537187583744525909423828125p-162 {+ 3201591392531348 -162 (2.92661e-049)}
; -1.6967440107929705472855630432604812085628509521484375p-222 > 1.71089609588600399803226537187583744525909423828125p-162 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100001 #b1011001001011101110100001100010000001010001010000111)))
(assert (= y (fp #b0 #b01101011101 #b1011010111111101010010010101101010101111001110010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

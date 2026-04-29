(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.699600973415619886708327612723223865032196044921875p940 {- 3150722683182622 940 (-1.57958e+283)}
; Y = 1.2805634422812428585558564009261317551136016845703125p-863 {+ 1263545414111589 -863 (2.08216e-260)}
; -1.699600973415619886708327612723223865032196044921875p940 = 1.2805634422812428585558564009261317551136016845703125p-863 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101011 #b1011001100011001000011001010010100010001111000011110)))
(assert (= y (fp #b0 #b00010100000 #b0100011111010011000000010111100100001101000101100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

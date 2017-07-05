(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.318830863477688186691239025094546377658843994140625p432 {+ 1435886557952330 432 (1.46267e+130)}
; Y = 1.59007618637169034769840436638332903385162353515625p-690 {+ 2657466893063748 -690 (3.09543e-208)}
; Z = -1.73756299004832737153947164188139140605926513671875p-439 {- 3321688407143916 -439 (-1.22397e-132)}
; 1.318830863477688186691239025094546377658843994140625p432 x 1.59007618637169034769840436638332903385162353515625p-690 -1.73756299004832737153947164188139140605926513671875p-439 == 1.0485207749339429117441113703534938395023345947265625p-257
; [HW: 1.0485207749339429117441113703534938395023345947265625p-257] 

; mpf : + 218518143912233 -257
; mpfd: + 218518143912233 -257 (4.5276e-078) class: Pos. norm. non-zero
; hwf : + 218518143912233 -257 (4.5276e-078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101111 #b0101000110011110111001100100001110010111100101001010)))
(assert (= y (fp #b0 #b00101001101 #b1001011100001111001110111010001010011101011001000100)))
(assert (= z (fp #b1 #b01001001000 #b1011110011010000111011011001100011111111010111101100)))
(assert (= r (fp #b0 #b01011111110 #b0000110001101011110110111000010110000100100100101001)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.00991257884414409318196703679859638214111328125p-281 {- 44642286388768 -281 (-2.59929e-085)}
; Y = 1.0535974435772657020748965805978514254093170166015625p-942 {+ 241381426922585 -942 (2.83412e-284)}
; -1.00991257884414409318196703679859638214111328125p-281 * 1.0535974435772657020748965805978514254093170166015625p-942 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011100110 #b0000001010001001101000010111100111110100011000100000)))
(assert (= y (fp #b0 #b00001010001 #b0000110110111000100011111110001101010000010001011001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2925777071374238147427604417316615581512451171875p-809 {- 1317652852841016 -809 (-3.78608e-244)}
; Y = -1.3303756679501426152256726709310896694660186767578125p266 {- 1487879735072541 266 (-1.57744e+080)}
; -1.2925777071374238147427604417316615581512451171875p-809 = -1.3303756679501426152256726709310896694660186767578125p266 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010110 #b0100101011100110010111110110001110110001101000111000)))
(assert (= y (fp #b1 #b10100001001 #b0101010010010011011111111111000100111101011100011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

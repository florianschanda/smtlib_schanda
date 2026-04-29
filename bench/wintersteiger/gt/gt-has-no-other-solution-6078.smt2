(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3155949250956708862503319323877803981304168701171875p-320 {+ 1421313187060883 -320 (6.15919e-097)}
; Y = 1.7604868777390227929657839922583661973476409912109375p677 {+ 3424928419205615 677 (1.10393e+204)}
; 1.3155949250956708862503319323877803981304168701171875p-320 > 1.7604868777390227929657839922583661973476409912109375p677 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111111 #b0101000011001010110101000011101000010001110010010011)))
(assert (= y (fp #b0 #b11010100100 #b1100001010101111010001001001110011101101000111101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

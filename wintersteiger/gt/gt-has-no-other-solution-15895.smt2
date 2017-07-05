(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1974468789837031668099598391563631594181060791015625p-194 {- 889221690616473 -194 (-4.76911e-059)}
; Y = 1.3817164863832187560177544582984410226345062255859375p791 {+ 1719098225836639 791 (1.79947e+238)}
; -1.1974468789837031668099598391563631594181060791015625p-194 > 1.3817164863832187560177544582984410226345062255859375p791 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111101 #b0011001010001011111000001110111111101110101010011001)))
(assert (= y (fp #b0 #b11100010110 #b0110000110111000001010111111000101011100001001011111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

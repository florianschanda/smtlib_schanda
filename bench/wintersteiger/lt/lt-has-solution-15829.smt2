(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.895689180434545040299099127878434956073760986328125p1016 {+ 4033825459244802 1016 (1.3312e+306)}
; Y = -1.7277897981646923586396269456599839031696319580078125p816 {- 3277673863818557 816 (-7.55035e+245)}
; 1.895689180434545040299099127878434956073760986328125p1016 < -1.7277897981646923586396269456599839031696319580078125p816 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110111 #b1110010101001011111000101101100101011000111100000010)))
(assert (= y (fp #b1 #b11100101111 #b1011101001010000011011101010010101111010110100111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

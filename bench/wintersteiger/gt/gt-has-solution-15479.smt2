(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4198454385942398392472796331276185810565948486328125p250 {- 1890815760806221 250 (-2.56886e+075)}
; Y = 1.02854155561033078214450142695568501949310302734375p-23 {+ 128539739211260 -23 (1.22612e-007)}
; -1.4198454385942398392472796331276185810565948486328125p250 > 1.02854155561033078214450142695568501949310302734375p-23 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111001 #b0110101101111010111111011001110000100011000101001101)))
(assert (= y (fp #b0 #b01111101000 #b0000011101001110011111111101011111101100010111111100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

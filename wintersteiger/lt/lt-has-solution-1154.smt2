(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.69879742301069480703290537348948419094085693359375p371 {+ 3147103813878428 371 (8.1709e+111)}
; Y = -1.2447562720282172588071034624590538442134857177734375p-864 {- 1102284255502871 -864 (-1.01197e-260)}
; 1.69879742301069480703290537348948419094085693359375p371 < -1.2447562720282172588071034624590538442134857177734375p-864 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110010 #b1011001011100100011000110100111001011100001010011100)))
(assert (= y (fp #b1 #b00010011111 #b0011111010101000010110001101011111011010001000010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

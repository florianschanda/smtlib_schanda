(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1031229622640872367611564186518080532550811767578125p438 {- 464424534425885 438 (-7.83e+131)}
; Y = -1.342037927673427777364167923224158585071563720703125p557 {- 1540401883616626 557 (-6.331e+167)}
; -1.1031229622640872367611564186518080532550811767578125p438 > -1.342037927673427777364167923224158585071563720703125p557 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110101 #b0001101001100110010001000011011001100100000100011101)))
(assert (= y (fp #b1 #b11000101100 #b0101011110001111110011000011000101011001010101110010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

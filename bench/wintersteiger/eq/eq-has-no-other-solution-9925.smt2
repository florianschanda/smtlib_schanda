(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4176132281585183125827143157948739826679229736328125p346 {+ 1880762778719693 346 (2.03206e+104)}
; Y = -1.726844699676974403956819514860399067401885986328125p55 {- 3273417518621442 55 (-6.22161e+016)}
; 1.4176132281585183125827143157948739826679229736328125p346 = -1.726844699676974403956819514860399067401885986328125p55 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011001 #b0110101011101000101100110101010101010001010111001101)))
(assert (= y (fp #b1 #b10000110110 #b1011101000010010011111101000011001100010001100000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

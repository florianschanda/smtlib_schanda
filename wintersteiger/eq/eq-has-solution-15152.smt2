(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.806940705170889227559882783680222928524017333984375p-1013 {- 3634137859117702 -1013 (-2.05854e-305)}
; Y = 1.323942703436457701826611810247413814067840576171875p-315 {+ 1458908238485822 -315 (1.98345e-095)}
; -1.806940705170889227559882783680222928524017333984375p-1013 = 1.323942703436457701826611810247413814067840576171875p-315 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001010 #b1100111010010011101010101000001010000101001010000110)))
(assert (= y (fp #b0 #b01011000100 #b0101001011101101111010001011010100001001100100111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

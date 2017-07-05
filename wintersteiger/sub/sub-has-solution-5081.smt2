(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.905489989878925261024278370314277708530426025390625p-121 {- 4077964381006442 -121 (-7.16766e-037)}
; Y = -1.9864655860293642941627467735088430345058441162109375p783 {- 4442646045655663 783 (-1.01057e+236)}
; -1.905489989878925261024278370314277708530426025390625p-121 - -1.9864655860293642941627467735088430345058441162109375p783 == 1.9864655860293642941627467735088430345058441162109375p783
; [HW: 1.9864655860293642941627467735088430345058441162109375p783] 

; mpf : + 4442646045655663 783
; mpfd: + 4442646045655663 783 (1.01057e+236) class: Pos. norm. non-zero
; hwf : + 4442646045655663 783 (1.01057e+236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110000110 #b1110011111001110001100010010010101100010101001101010)))
(assert (= y (fp #b1 #b11100001110 #b1111110010001001000000100011011010100000001001101111)))
(assert (= r (fp #b0 #b11100001110 #b1111110010001001000000100011011010100000001001101111)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)

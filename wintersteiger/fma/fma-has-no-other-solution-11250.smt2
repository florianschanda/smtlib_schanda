(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4254556689821062942513663074350915849208831787109375p161 {- 1916081992290479 161 (-4.16661e+048)}
; Y = -1.9158101419576372137498765368945896625518798828125p-415 {- 4124442214062536 -415 (-2.26415e-125)}
; Z = -1.06432112104813114683565800078213214874267578125p-707 {- 289676576784416 -707 (-1.58076e-213)}
; -1.4254556689821062942513663074350915849208831787109375p161 x -1.9158101419576372137498765368945896625518798828125p-415 -1.06432112104813114683565800078213214874267578125p-707 == 1.3654512137734637899910694613936357200145721435546875p-253
; [HW: 1.3654512137734637899910694613936357200145721435546875p-253] 

; mpf : + 1645845950172267 -253
; mpfd: + 1645845950172267 -253 (9.43381e-077) class: Pos. norm. non-zero
; hwf : + 1645845950172267 -253 (9.43381e-077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010100000 #b0110110011101010101010011010100000101101000010101111)))
(assert (= y (fp #b1 #b01001100000 #b1110101001110010100010001001000100001101100111001000)))
(assert (= z (fp #b1 #b00100111100 #b0001000001110111010110010101011101011000000000100000)))
(assert (= r (fp #b0 #b01100000010 #b0101110110001110001101011111001101110000110001101011)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)

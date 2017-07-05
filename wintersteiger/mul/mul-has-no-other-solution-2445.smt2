(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.562894085728971926840813466696999967098236083984375p-193 {- 2535049594738054 -193 (-1.24492e-058)}
; Y = 1.621527551683922485636912824702449142932891845703125p-456 {+ 2799111250164210 -456 (8.71458e-138)}
; -1.562894085728971926840813466696999967098236083984375p-193 * 1.621527551683922485636912824702449142932891845703125p-456 == -1.2671379101866910854568004651810042560100555419921875p-648
; [HW: -1.2671379101866910854568004651810042560100555419921875p-648] 

; mpf : - 1203082192773315 -648
; mpfd: - 1203082192773315 -648 (-1.08489e-195) class: Neg. norm. non-zero
; hwf : - 1203082192773315 -648 (-1.08489e-195) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100111110 #b1001000000011001110100111010100101010001010110000110)))
(assert (= y (fp #b0 #b01000110111 #b1001111100011100011011011111110000001011100111110010)))
(assert (= r (fp #b1 #b00101110111 #b0100010001100011001001100110101111000110000011000011)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)

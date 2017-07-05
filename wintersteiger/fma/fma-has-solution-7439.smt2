(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.32582547729842392669752371148206293582916259765625p-316 {+ 1467387498148996 -316 (9.93134e-096)}
; Y = -1.3439543262678352864014641454559750854969024658203125p113 {- 1549032575612293 113 (-1.39564e+034)}
; Z = 1.2660523598822519542039799489430151879787445068359375p662 {+ 1198193308826751 662 (2.42275e+199)}
; 1.32582547729842392669752371148206293582916259765625p-316 x -1.3439543262678352864014641454559750854969024658203125p113 1.2660523598822519542039799489430151879787445068359375p662 == 1.266052359882251732159375023911707103252410888671875p662
; [HW: 1.266052359882251732159375023911707103252410888671875p662] 

; mpf : + 1198193308826750 662
; mpfd: + 1198193308826750 662 (2.42275e+199) class: Pos. norm. non-zero
; hwf : + 1198193308826750 662 (2.42275e+199) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000011 #b0101001101101001010011000110100100110011010010000100)))
(assert (= y (fp #b1 #b10001110000 #b0101100000001101011001000000011010100011010110000101)))
(assert (= z (fp #b0 #b11010010101 #b0100010000011100000000011110100010110111110001111111)))
(assert (= r (fp #b0 #b11010010101 #b0100010000011100000000011110100010110111110001111110)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)

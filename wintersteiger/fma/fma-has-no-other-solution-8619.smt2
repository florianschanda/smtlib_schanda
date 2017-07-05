(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8543081644009486996793611979228444397449493408203125p654 {+ 3847461930855685 654 (1.38611e+197)}
; Y = 1.2931940006460045378133827398414723575115203857421875p-846 {+ 1320428392056611 -846 (2.75605e-255)}
; Z = 1.7025951151463669663854716418427415192127227783203125p795 {+ 3164207098765509 795 (3.54779e+239)}
; 1.8543081644009486996793611979228444397449493408203125p654 x 1.2931940006460045378133827398414723575115203857421875p-846 1.7025951151463669663854716418427415192127227783203125p795 == 1.7025951151463669663854716418427415192127227783203125p795
; [HW: 1.7025951151463669663854716418427415192127227783203125p795] 

; mpf : + 3164207098765509 795
; mpfd: + 3164207098765509 795 (3.54779e+239) class: Pos. norm. non-zero
; hwf : + 3164207098765509 795 (3.54779e+239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001101 #b1101101010110011111100001001101011001110110100000101)))
(assert (= y (fp #b0 #b00010110001 #b0100101100001110110000110001010000101000011100100011)))
(assert (= z (fp #b0 #b11100011010 #b1011001111011101010001100000000111100010000011000101)))
(assert (= r (fp #b0 #b11100011010 #b1011001111011101010001100000000111100010000011000101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

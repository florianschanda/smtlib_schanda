(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.434135080769911585463205483392812311649322509765625p-696 {+ 1955170587983834 -696 (4.36228e-210)}
; 1.434135080769911585463205483392812311649322509765625p-696 S == 1.197553790345098345682117724209092557430267333984375p-348
; [HW: 1.197553790345098345682117724209092557430267333984375p-348] 

; mpf : + 889703176583814 -348
; mpfd: + 889703176583814 -348 (2.08861e-105) class: Pos. norm. non-zero
; hwf : + 889703176583814 -348 (2.08861e-105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000111 #b0110111100100011011110100000010111110011111111011010)))
(assert (= r (fp #b0 #b01010100011 #b0011001010010010111000101001110010111011101010000110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)

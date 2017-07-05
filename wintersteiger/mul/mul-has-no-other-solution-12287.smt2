(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.690025049124571854264331705053336918354034423828125p492 {- 3107596554113730 492 (-2.16098e+148)}
; Y = -1.789705960563002573593394117779098451137542724609375p356 {- 3556519469723798 356 (-2.627e+107)}
; -1.690025049124571854264331705053336918354034423828125p492 * -1.789705960563002573593394117779098451137542724609375p356 == 1.5123239519595135238461125481990166008472442626953125p849
; [HW: 1.5123239519595135238461125481990166008472442626953125p849] 

; mpf : + 2307301959137845 849
; mpfd: + 2307301959137845 849 (5.6769e+255) class: Pos. norm. non-zero
; hwf : + 2307301959137845 849 (5.6769e+255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111101011 #b1011000010100101011110110100101101101001001011000010)))
(assert (= y (fp #b1 #b10101100011 #b1100101000101010001010110111101000010011000010010110)))
(assert (= r (fp #b0 #b11101010000 #b1000001100100111101010011001101010011111101000110101)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)

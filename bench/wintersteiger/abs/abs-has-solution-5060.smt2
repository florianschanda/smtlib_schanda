(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.39766660982030277438070697826333343982696533203125p-156 {+ 1790931195804404 -156 (1.53012e-047)}
; 1.39766660982030277438070697826333343982696533203125p-156 | == 1.39766660982030277438070697826333343982696533203125p-156
; [HW: 1.39766660982030277438070697826333343982696533203125p-156] 

; mpf : + 1790931195804404 -156
; mpfd: + 1790931195804404 -156 (1.53012e-047) class: Pos. norm. non-zero
; hwf : + 1790931195804404 -156 (1.53012e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100011 #b0110010111001101011110101001101111100011101011110100)))
(assert (= r (fp #b0 #b01101100011 #b0110010111001101011110101001101111100011101011110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

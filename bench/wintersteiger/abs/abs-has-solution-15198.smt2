(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6347168286504107914680616886471398174762725830078125p-337 {- 2858510472995773 -337 (-5.83894e-102)}
; -1.6347168286504107914680616886471398174762725830078125p-337 | == 1.6347168286504107914680616886471398174762725830078125p-337
; [HW: 1.6347168286504107914680616886471398174762725830078125p-337] 

; mpf : + 2858510472995773 -337
; mpfd: + 2858510472995773 -337 (5.83894e-102) class: Pos. norm. non-zero
; hwf : + 2858510472995773 -337 (5.83894e-102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010101110 #b1010001001111100110011010101010101000110001110111101)))
(assert (= r (fp #b0 #b01010101110 #b1010001001111100110011010101010101000110001110111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

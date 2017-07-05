(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2463226253522650122107506831525824964046478271484375p-363 {- 1109338483749383 -363 (-6.63349e-110)}
; -1.2463226253522650122107506831525824964046478271484375p-363 | == 1.2463226253522650122107506831525824964046478271484375p-363
; [HW: 1.2463226253522650122107506831525824964046478271484375p-363] 

; mpf : + 1109338483749383 -363
; mpfd: + 1109338483749383 -363 (6.63349e-110) class: Pos. norm. non-zero
; hwf : + 1109338483749383 -363 (6.63349e-110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010010100 #b0011111100001110111111111110010000100111001000000111)))
(assert (= r (fp #b0 #b01010010100 #b0011111100001110111111111110010000100111001000000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

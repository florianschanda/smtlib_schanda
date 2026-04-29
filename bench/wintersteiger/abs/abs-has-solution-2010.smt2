(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9519632574357521637153922711149789392948150634765625p-54 {- 4287261371458057 -54 (-1.08356e-016)}
; -1.9519632574357521637153922711149789392948150634765625p-54 | == 1.9519632574357521637153922711149789392948150634765625p-54
; [HW: 1.9519632574357521637153922711149789392948150634765625p-54] 

; mpf : + 4287261371458057 -54
; mpfd: + 4287261371458057 -54 (1.08356e-016) class: Pos. norm. non-zero
; hwf : + 4287261371458057 -54 (1.08356e-016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111001001 #b1111001110110011110111010011000110101110001000001001)))
(assert (= r (fp #b0 #b01111001001 #b1111001110110011110111010011000110101110001000001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

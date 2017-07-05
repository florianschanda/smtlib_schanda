(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6443429440502808080992735995096154510974884033203125p-514 {- 2901862642723653 -514 (-3.06602e-155)}
; Y = -1.576239458335184639992121446994133293628692626953125p114 {- 2595151809834514 114 (-3.27372e+034)}
; -1.6443429440502808080992735995096154510974884033203125p-514 M -1.576239458335184639992121446994133293628692626953125p114 == -1.6443429440502808080992735995096154510974884033203125p-514
; [HW: -1.6443429440502808080992735995096154510974884033203125p-514] 

; mpf : - 2901862642723653 -514
; mpfd: - 2901862642723653 -514 (-3.06602e-155) class: Neg. norm. non-zero
; hwf : - 2901862642723653 -514 (-3.06602e-155) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111101 #b1010010011110011101010001100000000011010101101000101)))
(assert (= y (fp #b1 #b10001110001 #b1001001110000100011011011101110000110110111000010010)))
(assert (= r (fp #b1 #b00111111101 #b1010010011110011101010001100000000011010101101000101)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

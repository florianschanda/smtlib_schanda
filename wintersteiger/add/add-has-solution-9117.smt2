(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8641133340019553354949266577023081481456756591796875p-162 {- 3891620489017083 -162 (-3.1887e-049)}
; Y = -1.20535264961821919627027455135248601436614990234375p-765 {- 924826116300156 -765 (-6.21108e-231)}
; -1.8641133340019553354949266577023081481456756591796875p-162 + -1.20535264961821919627027455135248601436614990234375p-765 == -1.86411333400195555753953158273361623287200927734375p-162
; [HW: -1.86411333400195555753953158273361623287200927734375p-162] 

; mpf : - 3891620489017084 -162
; mpfd: - 3891620489017084 -162 (-3.1887e-049) class: Neg. norm. non-zero
; hwf : - 3891620489017084 -162 (-3.1887e-049) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101011101 #b1101110100110110100010000000110110010011011011111011)))
(assert (= y (fp #b1 #b00100000010 #b0011010010010001111111011100001001000001110101111100)))
(assert (= r (fp #b1 #b01101011101 #b1101110100110110100010000000110110010011011011111100)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)

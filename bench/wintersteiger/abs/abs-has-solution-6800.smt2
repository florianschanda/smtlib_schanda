(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2312858961498178711480022684554569423198699951171875p-283 {- 1041619075716371 -283 (-7.92264e-086)}
; -1.2312858961498178711480022684554569423198699951171875p-283 | == 1.2312858961498178711480022684554569423198699951171875p-283
; [HW: 1.2312858961498178711480022684554569423198699951171875p-283] 

; mpf : + 1041619075716371 -283
; mpfd: + 1041619075716371 -283 (7.92264e-086) class: Pos. norm. non-zero
; hwf : + 1041619075716371 -283 (7.92264e-086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011100100 #b0011101100110101100011010110111111111101010100010011)))
(assert (= r (fp #b0 #b01011100100 #b0011101100110101100011010110111111111101010100010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

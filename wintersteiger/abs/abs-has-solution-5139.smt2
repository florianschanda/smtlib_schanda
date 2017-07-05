(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.727135092008612815561718889512121677398681640625p-412 {- 3274725329418000 -412 (-1.63293e-124)}
; -1.727135092008612815561718889512121677398681640625p-412 | == 1.727135092008612815561718889512121677398681640625p-412
; [HW: 1.727135092008612815561718889512121677398681640625p-412] 

; mpf : + 3274725329418000 -412
; mpfd: + 3274725329418000 -412 (1.63293e-124) class: Pos. norm. non-zero
; hwf : + 3274725329418000 -412 (1.63293e-124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100011 #b1011101000100101100001100111111111110011011100010000)))
(assert (= r (fp #b0 #b01001100011 #b1011101000100101100001100111111111110011011100010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.94552872205185334308907840750180184841156005859375p335 {- 4258282800300828 335 (-1.36171e+101)}
; -1.94552872205185334308907840750180184841156005859375p335 | == 1.94552872205185334308907840750180184841156005859375p335
; [HW: 1.94552872205185334308907840750180184841156005859375p335] 

; mpf : + 4258282800300828 335
; mpfd: + 4258282800300828 335 (1.36171e+101) class: Pos. norm. non-zero
; hwf : + 4258282800300828 335 (1.36171e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001110 #b1111001000001110001010111001101010100100001100011100)))
(assert (= r (fp #b0 #b10101001110 #b1111001000001110001010111001101010100100001100011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3301853428874028661965667197364382445812225341796875p-569 {+ 1487022587190907 -569 (6.88406e-172)}
; 1.3301853428874028661965667197364382445812225341796875p-569 | == 1.3301853428874028661965667197364382445812225341796875p-569
; [HW: 1.3301853428874028661965667197364382445812225341796875p-569] 

; mpf : + 1487022587190907 -569
; mpfd: + 1487022587190907 -569 (6.88406e-172) class: Pos. norm. non-zero
; hwf : + 1487022587190907 -569 (6.88406e-172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000110 #b0101010010000111000001101101000101010001111001111011)))
(assert (= r (fp #b0 #b00111000110 #b0101010010000111000001101101000101010001111001111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

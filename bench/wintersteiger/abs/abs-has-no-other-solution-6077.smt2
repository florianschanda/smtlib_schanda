(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4111422042474262017464070595451630651950836181640625p800 {- 1851619877844993 800 (-9.40952e+240)}
; -1.4111422042474262017464070595451630651950836181640625p800 | == 1.4111422042474262017464070595451630651950836181640625p800
; [HW: 1.4111422042474262017464070595451630651950836181640625p800] 

; mpf : + 1851619877844993 800
; mpfd: + 1851619877844993 800 (9.40952e+240) class: Pos. norm. non-zero
; hwf : + 1851619877844993 800 (9.40952e+240) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100011111 #b0110100101000000100111011001000100111111100000000001)))
(assert (= r (fp #b0 #b11100011111 #b0110100101000000100111011001000100111111100000000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.47388562908035058995892541133798658847808837890625p-910 {+ 2134191142542500 -910 (1.70282e-274)}
; 1.47388562908035058995892541133798658847808837890625p-910 | == 1.47388562908035058995892541133798658847808837890625p-910
; [HW: 1.47388562908035058995892541133798658847808837890625p-910] 

; mpf : + 2134191142542500 -910
; mpfd: + 2134191142542500 -910 (1.70282e-274) class: Pos. norm. non-zero
; hwf : + 2134191142542500 -910 (1.70282e-274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110001 #b0111100101010000100100011000111011110001110010100100)))
(assert (= r (fp #b0 #b00001110001 #b0111100101010000100100011000111011110001110010100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

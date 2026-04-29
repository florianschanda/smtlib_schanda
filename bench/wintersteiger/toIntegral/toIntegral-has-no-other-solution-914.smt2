(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4119430378887487531613942337571643292903900146484375 61 {+ 1855226511933639 61 (3.25572e+018)}
; 1.4119430378887487531613942337571643292903900146484375 61 I == 1.4119430378887487531613942337571643292903900146484375 61
; [HW: 1.4119430378887487531613942337571643292903900146484375 61] 

; mpf : + 1855226511933639 61
; mpfd: + 1855226511933639 61 (3.25572e+018) class: Pos. norm. non-zero
; hwf : + 1855226511933639 61 (3.25572e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111100 #b0110100101110101000110010101001110001100000011000111)))
(assert (= r (fp #b0 #b10000111100 #b0110100101110101000110010101001110001100000011000111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

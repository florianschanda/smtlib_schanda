(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3640110553117501535069777673925273120403289794921875p883 {+ 1639360053060739 883 (8.79638e+265)}
; 1.3640110553117501535069777673925273120403289794921875p883 | == 1.3640110553117501535069777673925273120403289794921875p883
; [HW: 1.3640110553117501535069777673925273120403289794921875p883] 

; mpf : + 1639360053060739 883
; mpfd: + 1639360053060739 883 (8.79638e+265) class: Pos. norm. non-zero
; hwf : + 1639360053060739 883 (8.79638e+265) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101110010 #b0101110100101111110101000001100111110010010010000011)))
(assert (= r (fp #b0 #b11101110010 #b0101110100101111110101000001100111110010010010000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

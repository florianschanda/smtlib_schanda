(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.38970377888873830585225732647813856601715087890625p-970 {- 1755069793388196 -970 (-1.3926e-292)}
; -1.38970377888873830585225732647813856601715087890625p-970 | == 1.38970377888873830585225732647813856601715087890625p-970
; [HW: 1.38970377888873830585225732647813856601715087890625p-970] 

; mpf : + 1755069793388196 -970
; mpfd: + 1755069793388196 -970 (1.3926e-292) class: Pos. norm. non-zero
; hwf : + 1755069793388196 -970 (1.3926e-292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110101 #b0110001111000011101000000111100101110100011010100100)))
(assert (= r (fp #b0 #b00000110101 #b0110001111000011101000000111100101110100011010100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

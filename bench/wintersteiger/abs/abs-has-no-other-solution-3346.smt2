(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0060372596963074176557029204559512436389923095703125p705 {- 27189400518629 705 (-1.69341e+212)}
; -1.0060372596963074176557029204559512436389923095703125p705 | == 1.0060372596963074176557029204559512436389923095703125p705
; [HW: 1.0060372596963074176557029204559512436389923095703125p705] 

; mpf : + 27189400518629 705
; mpfd: + 27189400518629 705 (1.69341e+212) class: Pos. norm. non-zero
; hwf : + 27189400518629 705 (1.69341e+212) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000000 #b0000000110001011101010000110100011110011111111100101)))
(assert (= r (fp #b0 #b11011000000 #b0000000110001011101010000110100011110011111111100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

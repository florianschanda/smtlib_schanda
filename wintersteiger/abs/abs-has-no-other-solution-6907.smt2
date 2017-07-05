(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6858798546614242042096520890481770038604736328125p773 {- 3088928257874120 773 (-8.37555e+232)}
; -1.6858798546614242042096520890481770038604736328125p773 | == 1.6858798546614242042096520890481770038604736328125p773
; [HW: 1.6858798546614242042096520890481770038604736328125p773] 

; mpf : + 3088928257874120 773
; mpfd: + 3088928257874120 773 (8.37555e+232) class: Pos. norm. non-zero
; hwf : + 3088928257874120 773 (8.37555e+232) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000100 #b1010111110010101110100100111100011000001100011001000)))
(assert (= r (fp #b0 #b11100000100 #b1010111110010101110100100111100011000001100011001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.02277392851520065875092768692411482334136962890625p941 {- 102564655974820 941 (-1.9011e+283)}
; -1.02277392851520065875092768692411482334136962890625p941 | == 1.02277392851520065875092768692411482334136962890625p941
; [HW: 1.02277392851520065875092768692411482334136962890625p941] 

; mpf : + 102564655974820 941
; mpfd: + 102564655974820 941 (1.9011e+283) class: Pos. norm. non-zero
; hwf : + 102564655974820 941 (1.9011e+283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101100 #b0000010111010100100000110001111000101100100110100100)))
(assert (= r (fp #b0 #b11110101100 #b0000010111010100100000110001111000101100100110100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7442381158079733882715345316682942211627960205078125p853 {- 3351750501027709 853 (-1.04759e+257)}
; -1.7442381158079733882715345316682942211627960205078125p853 | == 1.7442381158079733882715345316682942211627960205078125p853
; [HW: 1.7442381158079733882715345316682942211627960205078125p853] 

; mpf : + 3351750501027709 853
; mpfd: + 3351750501027709 853 (1.04759e+257) class: Pos. norm. non-zero
; hwf : + 3351750501027709 853 (1.04759e+257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010100 #b1011111010000110011000111001111111010100111101111101)))
(assert (= r (fp #b0 #b11101010100 #b1011111010000110011000111001111111010100111101111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

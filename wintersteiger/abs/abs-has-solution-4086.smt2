(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.495619868780961869703105548978783190250396728515625p-319 {+ 2232073456359354 -319 (1.4004e-096)}
; 1.495619868780961869703105548978783190250396728515625p-319 | == 1.495619868780961869703105548978783190250396728515625p-319
; [HW: 1.495619868780961869703105548978783190250396728515625p-319] 

; mpf : + 2232073456359354 -319
; mpfd: + 2232073456359354 -319 (1.4004e-096) class: Pos. norm. non-zero
; hwf : + 2232073456359354 -319 (1.4004e-096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000000 #b0111111011100000111100011001011110101001011110111010)))
(assert (= r (fp #b0 #b01011000000 #b0111111011100000111100011001011110101001011110111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

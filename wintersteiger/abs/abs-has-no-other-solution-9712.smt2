(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5422003589624810881986149979638867080211639404296875p800 {+ 2441853334583579 800 (1.02834e+241)}
; 1.5422003589624810881986149979638867080211639404296875p800 | == 1.5422003589624810881986149979638867080211639404296875p800
; [HW: 1.5422003589624810881986149979638867080211639404296875p800] 

; mpf : + 2441853334583579 800
; mpfd: + 2441853334583579 800 (1.02834e+241) class: Pos. norm. non-zero
; hwf : + 2441853334583579 800 (1.02834e+241) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011111 #b1000101011001101101001001000100110011111100100011011)))
(assert (= r (fp #b0 #b11100011111 #b1000101011001101101001001000100110011111100100011011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

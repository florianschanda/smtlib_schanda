(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4435589136902908791171284974552690982818603515625p811 {+ 1997611758412456 811 (1.97134e+244)}
; 1.4435589136902908791171284974552690982818603515625p811 | == 1.4435589136902908791171284974552690982818603515625p811
; [HW: 1.4435589136902908791171284974552690982818603515625p811] 

; mpf : + 1997611758412456 811
; mpfd: + 1997611758412456 811 (1.97134e+244) class: Pos. norm. non-zero
; hwf : + 1997611758412456 811 (1.97134e+244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101010 #b0111000110001101000100111011010000100110001010101000)))
(assert (= r (fp #b0 #b11100101010 #b0111000110001101000100111011010000100110001010101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

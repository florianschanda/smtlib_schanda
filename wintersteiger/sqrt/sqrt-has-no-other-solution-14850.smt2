(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0969786343417118334997439887956716120243072509765625p246 {+ 436752941484233 246 (1.24044e+074)}
; 1.0969786343417118334997439887956716120243072509765625p246 S == 1.047367478176457478156180513906292617321014404296875p123
; [HW: 1.047367478176457478156180513906292617321014404296875p123] 

; mpf : + 213324157064974 123
; mpfd: + 213324157064974 123 (1.11375e+037) class: Pos. norm. non-zero
; hwf : + 213324157064974 123 (1.11375e+037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110101 #b0001100011010011100101110111111011101000100011001001)))
(assert (= r (fp #b0 #b10001111010 #b0000110000100000010001100110100110101001011100001110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

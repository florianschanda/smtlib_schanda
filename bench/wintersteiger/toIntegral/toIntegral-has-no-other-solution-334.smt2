(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5985508333754376852908762884908355772495269775390625 978 {+ 2695633310151921 978 (4.08378e+294)}
; 1.5985508333754376852908762884908355772495269775390625 978 I == 1.5985508333754376852908762884908355772495269775390625 978
; [HW: 1.5985508333754376852908762884908355772495269775390625 978] 

; mpf : + 2695633310151921 978
; mpfd: + 2695633310151921 978 (4.08378e+294) class: Pos. norm. non-zero
; hwf : + 2695633310151921 978 (4.08378e+294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010001 #b1001100100111010101000001001111001010111010011110001)))
(assert (= r (fp #b0 #b11111010001 #b1001100100111010101000001001111001010111010011110001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

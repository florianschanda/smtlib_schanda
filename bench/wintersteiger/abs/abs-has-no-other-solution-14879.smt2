(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0717758035979161324036113001056946814060211181640625p602 {+ 323249482337793 602 (1.77894e+181)}
; 1.0717758035979161324036113001056946814060211181640625p602 | == 1.0717758035979161324036113001056946814060211181640625p602
; [HW: 1.0717758035979161324036113001056946814060211181640625p602] 

; mpf : + 323249482337793 602
; mpfd: + 323249482337793 602 (1.77894e+181) class: Pos. norm. non-zero
; hwf : + 323249482337793 602 (1.77894e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011001 #b0001001001011111111001100010100100011000111000000001)))
(assert (= r (fp #b0 #b11001011001 #b0001001001011111111001100010100100011000111000000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

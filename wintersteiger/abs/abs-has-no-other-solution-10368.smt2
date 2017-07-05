(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9540524134891532614943798762396909296512603759765625p820 {- 4296670093881673 820 (-1.36626e+247)}
; -1.9540524134891532614943798762396909296512603759765625p820 | == 1.9540524134891532614943798762396909296512603759765625p820
; [HW: 1.9540524134891532614943798762396909296512603759765625p820] 

; mpf : + 4296670093881673 820
; mpfd: + 4296670093881673 820 (1.36626e+247) class: Pos. norm. non-zero
; hwf : + 4296670093881673 820 (1.36626e+247) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110011 #b1111010000111100110001110110101010011011000101001001)))
(assert (= r (fp #b0 #b11100110011 #b1111010000111100110001110110101010011011000101001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

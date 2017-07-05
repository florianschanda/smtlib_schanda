(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.505279250992016759624902988434769213199615478515625p-398 {- 2275575446485690 -398 (-2.33173e-120)}
; -1.505279250992016759624902988434769213199615478515625p-398 | == 1.505279250992016759624902988434769213199615478515625p-398
; [HW: 1.505279250992016759624902988434769213199615478515625p-398] 

; mpf : + 2275575446485690 -398
; mpfd: + 2275575446485690 -398 (2.33173e-120) class: Pos. norm. non-zero
; hwf : + 2275575446485690 -398 (2.33173e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001110001 #b1000000101011001111110110010001001011011101010111010)))
(assert (= r (fp #b0 #b01001110001 #b1000000101011001111110110010001001011011101010111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8233732969887446184742429977632127702236175537109375p-270 {- 3708143673505327 -270 (-9.61118e-082)}
; -1.8233732969887446184742429977632127702236175537109375p-270 | == 1.8233732969887446184742429977632127702236175537109375p-270
; [HW: 1.8233732969887446184742429977632127702236175537109375p-270] 

; mpf : + 3708143673505327 -270
; mpfd: + 3708143673505327 -270 (9.61118e-082) class: Pos. norm. non-zero
; hwf : + 3708143673505327 -270 (9.61118e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011110001 #b1101001011001000100101111010011011110111011000101111)))
(assert (= r (fp #b0 #b01011110001 #b1101001011001000100101111010011011110111011000101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

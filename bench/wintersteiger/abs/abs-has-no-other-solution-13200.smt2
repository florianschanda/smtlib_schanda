(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8683017108492701030542093576514162123203277587890625p898 {+ 3910483261425937 898 (3.94805e+270)}
; 1.8683017108492701030542093576514162123203277587890625p898 | == 1.8683017108492701030542093576514162123203277587890625p898
; [HW: 1.8683017108492701030542093576514162123203277587890625p898] 

; mpf : + 3910483261425937 898
; mpfd: + 3910483261425937 898 (3.94805e+270) class: Pos. norm. non-zero
; hwf : + 3910483261425937 898 (3.94805e+270) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000001 #b1101111001001001000001010101101100101000100100010001)))
(assert (= r (fp #b0 #b11110000001 #b1101111001001001000001010101101100101000100100010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

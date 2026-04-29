(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.67307579517628735032985787256620824337005615234375p221 {+ 3031263900348028 221 (5.63825e+066)}
; 1.67307579517628735032985787256620824337005615234375p221 | == 1.67307579517628735032985787256620824337005615234375p221
; [HW: 1.67307579517628735032985787256620824337005615234375p221] 

; mpf : + 3031263900348028 221
; mpfd: + 3031263900348028 221 (5.63825e+066) class: Pos. norm. non-zero
; hwf : + 3031263900348028 221 (5.63825e+066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011100 #b1010110001001110101100100000000000000010111001111100)))
(assert (= r (fp #b0 #b10011011100 #b1010110001001110101100100000000000000010111001111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

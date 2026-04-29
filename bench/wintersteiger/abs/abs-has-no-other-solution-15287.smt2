(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.61595155311240290529894991777837276458740234375p-615 {+ 2773999185075296 -615 (1.18845e-185)}
; 1.61595155311240290529894991777837276458740234375p-615 | == 1.61595155311240290529894991777837276458740234375p-615
; [HW: 1.61595155311240290529894991777837276458740234375p-615] 

; mpf : + 2773999185075296 -615
; mpfd: + 2773999185075296 -615 (1.18845e-185) class: Pos. norm. non-zero
; hwf : + 2773999185075296 -615 (1.18845e-185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011000 #b1001110110101111000000000100000010001001110001100000)))
(assert (= r (fp #b0 #b00110011000 #b1001110110101111000000000100000010001001110001100000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

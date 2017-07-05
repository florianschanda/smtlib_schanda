(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3469463577199511927773301067645661532878875732421875p-913 {+ 1562507487345123 -913 (1.9452e-275)}
; 1.3469463577199511927773301067645661532878875732421875p-913 | == 1.3469463577199511927773301067645661532878875732421875p-913
; [HW: 1.3469463577199511927773301067645661532878875732421875p-913] 

; mpf : + 1562507487345123 -913
; mpfd: + 1562507487345123 -913 (1.9452e-275) class: Pos. norm. non-zero
; hwf : + 1562507487345123 -913 (1.9452e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101110 #b0101100011010001011110011111101111011111100111100011)))
(assert (= r (fp #b0 #b00001101110 #b0101100011010001011110011111101111011111100111100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

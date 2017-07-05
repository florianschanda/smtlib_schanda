(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.929386941666297428099596800166182219982147216796875p-994 {+ 4185586684171342 -994 (1.1524e-299)}
; 1.929386941666297428099596800166182219982147216796875p-994 | == 1.929386941666297428099596800166182219982147216796875p-994
; [HW: 1.929386941666297428099596800166182219982147216796875p-994] 

; mpf : + 4185586684171342 -994
; mpfd: + 4185586684171342 -994 (1.1524e-299) class: Pos. norm. non-zero
; hwf : + 4185586684171342 -994 (1.1524e-299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011101 #b1110110111101100010011010111011111001001010001001110)))
(assert (= r (fp #b0 #b00000011101 #b1110110111101100010011010111011111001001010001001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

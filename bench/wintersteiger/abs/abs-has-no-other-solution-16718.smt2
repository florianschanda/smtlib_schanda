(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.904380372963272893827024745405651628971099853515625p-476 {- 4072967110678586 -476 (-9.76058e-144)}
; -1.904380372963272893827024745405651628971099853515625p-476 | == 1.904380372963272893827024745405651628971099853515625p-476
; [HW: 1.904380372963272893827024745405651628971099853515625p-476] 

; mpf : + 4072967110678586 -476
; mpfd: + 4072967110678586 -476 (9.76058e-144) class: Pos. norm. non-zero
; hwf : + 4072967110678586 -476 (9.76058e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000100011 #b1110011110000101011110001101110100000101100000111010)))
(assert (= r (fp #b0 #b01000100011 #b1110011110000101011110001101110100000101100000111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

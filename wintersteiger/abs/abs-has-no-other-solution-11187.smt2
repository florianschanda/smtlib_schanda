(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3106872853712567827955126631422899663448333740234375p-794 {+ 1399211142626743 -794 (1.25801e-239)}
; 1.3106872853712567827955126631422899663448333740234375p-794 | == 1.3106872853712567827955126631422899663448333740234375p-794
; [HW: 1.3106872853712567827955126631422899663448333740234375p-794] 

; mpf : + 1399211142626743 -794
; mpfd: + 1399211142626743 -794 (1.25801e-239) class: Pos. norm. non-zero
; hwf : + 1399211142626743 -794 (1.25801e-239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100101 #b0100111110001001001100111011000111110011110110110111)))
(assert (= r (fp #b0 #b00011100101 #b0100111110001001001100111011000111110011110110110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

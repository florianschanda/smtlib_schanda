(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2373844233524116109634860549704171717166900634765625p385 {- 1069084400553481 385 (-9.75109e+115)}
; -1.2373844233524116109634860549704171717166900634765625p385 | == 1.2373844233524116109634860549704171717166900634765625p385
; [HW: 1.2373844233524116109634860549704171717166900634765625p385] 

; mpf : + 1069084400553481 385
; mpfd: + 1069084400553481 385 (9.75109e+115) class: Pos. norm. non-zero
; hwf : + 1069084400553481 385 (9.75109e+115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000000 #b0011110011000101001110011011111011100000111000001001)))
(assert (= r (fp #b0 #b10110000000 #b0011110011000101001110011011111011100000111000001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

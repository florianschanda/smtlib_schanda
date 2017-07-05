(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2181260990512463582291502461885102093219757080078125p-601 {- 982352618406973 -601 (-1.46779e-181)}
; -1.2181260990512463582291502461885102093219757080078125p-601 | == 1.2181260990512463582291502461885102093219757080078125p-601
; [HW: 1.2181260990512463582291502461885102093219757080078125p-601] 

; mpf : + 982352618406973 -601
; mpfd: + 982352618406973 -601 (1.46779e-181) class: Pos. norm. non-zero
; hwf : + 982352618406973 -601 (1.46779e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100110 #b0011011111010111000111001010110111010100010000111101)))
(assert (= r (fp #b0 #b00110100110 #b0011011111010111000111001010110111010100010000111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

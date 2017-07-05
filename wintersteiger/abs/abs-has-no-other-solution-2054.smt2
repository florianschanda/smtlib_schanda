(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4228526609518381551566790221841074526309967041015625p-592 {+ 1904359086295321 -592 (8.77814e-179)}
; 1.4228526609518381551566790221841074526309967041015625p-592 | == 1.4228526609518381551566790221841074526309967041015625p-592
; [HW: 1.4228526609518381551566790221841074526309967041015625p-592] 

; mpf : + 1904359086295321 -592
; mpfd: + 1904359086295321 -592 (8.77814e-179) class: Pos. norm. non-zero
; hwf : + 1904359086295321 -592 (8.77814e-179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101111 #b0110110001000000000100100110110111010000100100011001)))
(assert (= r (fp #b0 #b00110101111 #b0110110001000000000100100110110111010000100100011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

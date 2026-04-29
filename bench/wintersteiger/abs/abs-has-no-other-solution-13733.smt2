(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8508282176968011700779470629640854895114898681640625p758 {- 3831789644175617 758 (-2.8061e+228)}
; -1.8508282176968011700779470629640854895114898681640625p758 | == 1.8508282176968011700779470629640854895114898681640625p758
; [HW: 1.8508282176968011700779470629640854895114898681640625p758] 

; mpf : + 3831789644175617 758
; mpfd: + 3831789644175617 758 (2.8061e+228) class: Pos. norm. non-zero
; hwf : + 3831789644175617 758 (2.8061e+228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110101 #b1101100111001111111000001100100110000101100100000001)))
(assert (= r (fp #b0 #b11011110101 #b1101100111001111111000001100100110000101100100000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

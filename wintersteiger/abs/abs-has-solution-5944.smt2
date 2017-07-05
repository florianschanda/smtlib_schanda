(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.303518128221317073922591589507646858692169189453125p574 {+ 1366924129157714 574 (8.05999e+172)}
; 1.303518128221317073922591589507646858692169189453125p574 | == 1.303518128221317073922591589507646858692169189453125p574
; [HW: 1.303518128221317073922591589507646858692169189453125p574] 

; mpf : + 1366924129157714 574
; mpfd: + 1366924129157714 574 (8.05999e+172) class: Pos. norm. non-zero
; hwf : + 1366924129157714 574 (8.05999e+172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111101 #b0100110110110011010111010011001001110100001001010010)))
(assert (= r (fp #b0 #b11000111101 #b0100110110110011010111010011001001110100001001010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

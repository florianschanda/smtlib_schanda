(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.590356914329380089156984467990696430206298828125p-565 {+ 2658731179389392 -565 (1.31688e-170)}
; 1.590356914329380089156984467990696430206298828125p-565 | == 1.590356914329380089156984467990696430206298828125p-565
; [HW: 1.590356914329380089156984467990696430206298828125p-565] 

; mpf : + 2658731179389392 -565
; mpfd: + 2658731179389392 -565 (1.31688e-170) class: Pos. norm. non-zero
; hwf : + 2658731179389392 -565 (1.31688e-170) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001010 #b1001011100100001101000010111100000000011000111010000)))
(assert (= r (fp #b0 #b00111001010 #b1001011100100001101000010111100000000011000111010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3524195368034745978746968830819241702556610107421875p684 {+ 1587156494626211 684 (1.0855e+206)}
; 1.3524195368034745978746968830819241702556610107421875p684 | == 1.3524195368034745978746968830819241702556610107421875p684
; [HW: 1.3524195368034745978746968830819241702556610107421875p684] 

; mpf : + 1587156494626211 684
; mpfd: + 1587156494626211 684 (1.0855e+206) class: Pos. norm. non-zero
; hwf : + 1587156494626211 684 (1.0855e+206) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010101011 #b0101101000111000001010101011000100001010110110100011)))
(assert (= r (fp #b0 #b11010101011 #b0101101000111000001010101011000100001010110110100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

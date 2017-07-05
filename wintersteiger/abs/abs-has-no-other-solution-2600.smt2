(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.99495418527794843299716376350261270999908447265625p-851 {+ 4480875298068484 -851 (1.32864e-256)}
; 1.99495418527794843299716376350261270999908447265625p-851 | == 1.99495418527794843299716376350261270999908447265625p-851
; [HW: 1.99495418527794843299716376350261270999908447265625p-851] 

; mpf : + 4480875298068484 -851
; mpfd: + 4480875298068484 -851 (1.32864e-256) class: Pos. norm. non-zero
; hwf : + 4480875298068484 -851 (1.32864e-256) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101100 #b1111111010110101010100010100011011001001100000000100)))
(assert (= r (fp #b0 #b00010101100 #b1111111010110101010100010100011011001001100000000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

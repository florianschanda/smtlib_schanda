(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2199960581495610245639227287028916180133819580078125p599 {- 990774165505341 599 (-2.5312e+180)}
; -1.2199960581495610245639227287028916180133819580078125p599 | == 1.2199960581495610245639227287028916180133819580078125p599
; [HW: 1.2199960581495610245639227287028916180133819580078125p599] 

; mpf : + 990774165505341 599
; mpfd: + 990774165505341 599 (2.5312e+180) class: Pos. norm. non-zero
; hwf : + 990774165505341 599 (2.5312e+180) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010110 #b0011100001010001101010010110001100000000010100111101)))
(assert (= r (fp #b0 #b11001010110 #b0011100001010001101010010110001100000000010100111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

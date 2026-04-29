(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7803017774338927292632206444977782666683197021484375p713 {+ 3514166794087815 713 (7.6715e+214)}
; 1.7803017774338927292632206444977782666683197021484375p713 | == 1.7803017774338927292632206444977782666683197021484375p713
; [HW: 1.7803017774338927292632206444977782666683197021484375p713] 

; mpf : + 3514166794087815 713
; mpfd: + 3514166794087815 713 (7.6715e+214) class: Pos. norm. non-zero
; hwf : + 3514166794087815 713 (7.6715e+214) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001000 #b1100011111000001110110110111011100010110110110000111)))
(assert (= r (fp #b0 #b11011001000 #b1100011111000001110110110111011100010110110110000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

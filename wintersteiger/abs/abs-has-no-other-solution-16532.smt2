(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.53945907367200884863223109277896583080291748046875p-936 {+ 2429507683170892 -936 (2.65028e-282)}
; 1.53945907367200884863223109277896583080291748046875p-936 | == 1.53945907367200884863223109277896583080291748046875p-936
; [HW: 1.53945907367200884863223109277896583080291748046875p-936] 

; mpf : + 2429507683170892 -936
; mpfd: + 2429507683170892 -936 (2.65028e-282) class: Pos. norm. non-zero
; hwf : + 2429507683170892 -936 (2.65028e-282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001010111 #b1000101000011001111111010110011011110011101001001100)))
(assert (= r (fp #b0 #b00001010111 #b1000101000011001111111010110011011110011101001001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

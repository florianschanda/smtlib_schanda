(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1284233199741049435971262937528081238269805908203125p-112 {+ 578367215981061 -112 (2.17326e-034)}
; Y = -1.13231305083608990713628372759558260440826416015625p257 {- 595885006441668 257 (-2.62226e+077)}
; 1.1284233199741049435971262937528081238269805908203125p-112 > -1.13231305083608990713628372759558260440826416015625p257 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001111 #b0010000011100000010110011100011101010101001000000101)))
(assert (= y (fp #b1 #b10100000000 #b0010000111011111010001001010001000101100110011000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

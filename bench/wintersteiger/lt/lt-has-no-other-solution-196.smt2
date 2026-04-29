(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.545428925812981635345977338147349655628204345703125p-880 {- 2456393507048434 -880 (-1.91714e-265)}
; Y = 1.10235417705263305521157235489226877689361572265625p1010 {+ 460962233634052 1010 (1.20953e+304)}
; -1.545428925812981635345977338147349655628204345703125p-880 < 1.10235417705263305521157235489226877689361572265625p1010 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001111 #b1000101110100001001110101110011010101000101111110010)))
(assert (= y (fp #b0 #b11111110001 #b0001101000110011111000100010001100001100110100000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

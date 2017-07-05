(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.583904737719347366464717197231948375701904296875p-61 {+ 2629673159212720 -61 (6.86909e-019)}
; Y = 1.561048584691810514613052873755805194377899169921875p-792 {+ 2526738196954782 -792 (5.99321e-239)}
; 1.583904737719347366464717197231948375701904296875p-61 < 1.561048584691810514613052873755805194377899169921875p-792 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000010 #b1001010101111010110001111110100001111011111010110000)))
(assert (= y (fp #b0 #b00011100111 #b1000111110100000111000010100101010110111111010011110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

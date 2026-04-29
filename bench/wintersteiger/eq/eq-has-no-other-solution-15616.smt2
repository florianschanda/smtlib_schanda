(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.45841556062407118332657773862592875957489013671875p-136 {- 2064520148007404 -136 (-1.67418e-041)}
; Y = -1.939914803860351977249365518218837678432464599609375p156 {- 4232999960425494 156 (-1.77199e+047)}
; -1.45841556062407118332657773862592875957489013671875p-136 = -1.939914803860351977249365518218837678432464599609375p156 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110111 #b0111010101011010101110001110000011011011100111101100)))
(assert (= y (fp #b1 #b10010011011 #b1111000010011110010000011010111110011011010000010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.229283872570326341389090885058976709842681884765625p-358 {- 1032602763069786 -358 (-2.0937e-108)}
; Y = -1.4515694988062748382873223818023689091205596923828125p-264 {- 2033688226555821 -264 (-4.89687e-080)}
; -1.229283872570326341389090885058976709842681884765625p-358 = -1.4515694988062748382873223818023689091205596923828125p-264 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011001 #b0011101010110010010110010000111000110000100101011010)))
(assert (= y (fp #b1 #b01011110111 #b0111001110011010000011110000010100111110011110101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6834519050982363896906690570176579058170318603515625p537 {+ 3077993745126073 537 (7.5737e+161)}
; Y = -1.1266674375843412914122154688811860978603363037109375p-937 {- 570459424704815 -937 (-9.69817e-283)}
; 1.6834519050982363896906690570176579058170318603515625p537 > -1.1266674375843412914122154688811860978603363037109375p-937 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011000 #b1010111011110110101101000011110011001001001010111001)))
(assert (= y (fp #b1 #b00001010110 #b0010000001101101010001101111010111100100100100101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

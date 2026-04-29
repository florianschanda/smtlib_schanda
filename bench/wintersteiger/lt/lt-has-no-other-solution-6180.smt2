(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7280024859805791503930549879441969096660614013671875p-474 {+ 3278631724586931 -474 (3.54264e-143)}
; Y = 1.3432218293413737963959420085302554070949554443359375p-590 {+ 1545733702727231 -590 (3.31475e-178)}
; 1.7280024859805791503930549879441969096660614013671875p-474 < 1.3432218293413737963959420085302554070949554443359375p-590 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100101 #b1011101001011110010111101111010010110001011110110011)))
(assert (= y (fp #b0 #b00110110001 #b0101011111011101011000101100010001001011011000111111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

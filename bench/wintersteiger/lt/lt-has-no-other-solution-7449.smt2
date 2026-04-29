(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3031030752793710814074756854097358882427215576171875p905 {+ 1365054896883027 905 (3.52472e+272)}
; Y = 1.781714020395330777546405442990362644195556640625p733 {+ 3520526970962704 733 (8.05054e+220)}
; 1.3031030752793710814074756854097358882427215576171875p905 < 1.781714020395330777546405442990362644195556640625p733 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001000 #b0100110110011000001010011100001110100100010101010011)))
(assert (= y (fp #b0 #b11011011100 #b1100100000011110011010001111100001101100001100010000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

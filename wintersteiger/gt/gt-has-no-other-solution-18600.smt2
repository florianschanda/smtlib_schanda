(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1793781885671739129151092129177413880825042724609375p-806 {- 807847543189519 -806 (-2.76361e-243)}
; Y = 1.9054738215543824964015584555454552173614501953125p-672 {+ 4077891565346056 -672 (9.72402e-203)}
; -1.1793781885671739129151092129177413880825042724609375p-806 > 1.9054738215543824964015584555454552173614501953125p-672 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011001 #b0010110111101011101110101001110110000011000000001111)))
(assert (= y (fp #b0 #b00101011111 #b1110011111001101001000011110001011110101110100001000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

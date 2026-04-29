(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9695105947130808754508279889705590903759002685546875p629 {- 4366287553081579 629 (-4.38759e+189)}
; Y = 1.745712611284924609122981564723886549472808837890625p-65 {+ 3358391038308266 -65 (4.73176e-020)}
; -1.9695105947130808754508279889705590903759002685546875p629 = 1.745712611284924609122981564723886549472808837890625p-65 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001110100 #b1111100000110001110110001010100101101011000011101011)))
(assert (= y (fp #b0 #b01110111110 #b1011111011100111000001011000110110101110111110101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

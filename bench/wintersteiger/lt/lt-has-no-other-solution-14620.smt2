(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0147068383734703100884644300094805657863616943359375p864 {- 66233711818559 864 (-1.24812e+260)}
; Y = -1.8626517922520149372900277739972807466983795166015625p444 {- 3885038290136665 444 (-8.46155e+133)}
; -1.0147068383734703100884644300094805657863616943359375p864 < -1.8626517922520149372900277739972807466983795166015625p444 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011111 #b0000001111000011110100111100110111010111011100111111)))
(assert (= y (fp #b1 #b10110111011 #b1101110011010110101111110111001110001110111001011001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

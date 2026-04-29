(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.760828781543578802626370816142298281192779541015625p-968 {- 3426468217052410 -968 (-7.05799e-292)}
; Y = -1.8312524372940164330003653958556242287158966064453125p-977 {- 3743628166848149 -977 (-1.43365e-294)}
; -1.760828781543578802626370816142298281192779541015625p-968 < -1.8312524372940164330003653958556242287158966064453125p-977 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110111 #b1100001011000101101011001100111010010101110011111010)))
(assert (= y (fp #b1 #b00000101110 #b1101010011001100111101011011000011100101111010010101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

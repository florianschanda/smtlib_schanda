(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1165300260421400224686294677667319774627685546875p-836 {- 524804581860856 -836 (-2.43665e-252)}
; Y = -1.2436866473296401824910617506247945129871368408203125p358 {- 1097467094108933 358 (-7.30213e+107)}
; -1.1165300260421400224686294677667319774627685546875p-836 > -1.2436866473296401824910617506247945129871368408203125p358 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111011 #b0001110111010100111010010110101011011010010111111000)))
(assert (= y (fp #b1 #b10101100101 #b0011111001100010001111111000010011000000101100000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

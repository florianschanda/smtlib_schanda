(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.18257802681638057862301138811744749546051025390625p-128 {- 822258333536292 -128 (-3.47528e-039)}
; Y = -1.7323371637271927081513922530575655400753021240234375p782 {- 3298153377671351 782 (-4.40645e+235)}
; -1.18257802681638057862301138811744749546051025390625p-128 > -1.7323371637271927081513922530575655400753021240234375p782 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101111111 #b0010111010111101011011101111111000100101000000100100)))
(assert (= y (fp #b1 #b11100001101 #b1011101101111010011100101100011111011010100010110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2353629346867791571895622837473638355731964111328125p221 {+ 1059980424952205 221 (4.16316e+066)}
; Y = -1.6369075821379903690200308119528926908969879150390625p115 {- 2868376749586097 115 (-6.79945e+034)}
; 1.2353629346867791571895622837473638355731964111328125p221 < -1.6369075821379903690200308119528926908969879150390625p115 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011011100 #b0011110001000000101111101100101100101011100110001101)))
(assert (= y (fp #b1 #b10001110010 #b1010001100001100011000000001001111011011011010110001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

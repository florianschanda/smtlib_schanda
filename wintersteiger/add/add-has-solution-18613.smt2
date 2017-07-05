(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0759713564455977152789500905782915651798248291015625p-723 {- 342144572579225 -723 (-2.43845e-218)}
; Y = 1.5519004014160515669829010221292264759540557861328125p-4 {+ 2485538442162957 -4 (0.0969938)}
; -1.0759713564455977152789500905782915651798248291015625p-723 + 1.5519004014160515669829010221292264759540557861328125p-4 == 1.5519004014160515669829010221292264759540557861328125p-4
; [HW: 1.5519004014160515669829010221292264759540557861328125p-4] 

; mpf : + 2485538442162957 -4
; mpfd: + 2485538442162957 -4 (0.0969938) class: Pos. norm. non-zero
; hwf : + 2485538442162957 -4 (0.0969938) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100101100 #b0001001101110010110110111101101101011101110110011001)))
(assert (= y (fp #b0 #b01111111011 #b1000110101001001010110000011111010111011001100001101)))
(assert (= r (fp #b0 #b01111111011 #b1000110101001001010110000011111010111011001100001101)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.80643986226226882507717164116911590099334716796875p-860 {- 3631882263181068 -860 (-2.34978e-259)}
; Y = -1.8301243207623210107470868024392984807491302490234375p-383 {- 3738547581656375 -383 (-9.2895e-116)}
; -1.80643986226226882507717164116911590099334716796875p-860 = -1.8301243207623210107470868024392984807491302490234375p-383 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100011 #b1100111001110010110101111100001010011011011100001100)))
(assert (= y (fp #b1 #b01010000000 #b1101010010000011000001110000100101001001110100110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

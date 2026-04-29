(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3298721178116397201307563591399230062961578369140625p-46 {- 1485611946856417 -46 (-1.88986e-014)}
; Y = 1.5071555778219860588507117427070625126361846923828125p-941 {+ 2284025671297965 -941 (8.10834e-284)}
; -1.3298721178116397201307563591399230062961578369140625p-46 > 1.5071555778219860588507117427070625126361846923828125p-941 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010001 #b0101010001110010011111111100010111011100111111100001)))
(assert (= y (fp #b0 #b00001010010 #b1000000111010100111100101010110010111010101110101101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

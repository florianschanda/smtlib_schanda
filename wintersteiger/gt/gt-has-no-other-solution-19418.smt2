(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.827976254505924824655949123553000390529632568359375p-994 {+ 3728873551264502 -994 (1.09183e-299)}
; Y = 1.49471467035492810992991508101113140583038330078125p-943 {+ 2227996805065172 -943 (2.01035e-284)}
; 1.827976254505924824655949123553000390529632568359375p-994 > 1.49471467035492810992991508101113140583038330078125p-943 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011101 #b1101001111110110010000000111011011110111101011110110)))
(assert (= y (fp #b0 #b00001010000 #b0111111010100101100111101110001000000110100111010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

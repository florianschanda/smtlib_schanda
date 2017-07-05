(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.44240003008313077970115045900456607341766357421875p437 {- 1992392610631084 437 (-5.1191e+131)}
; Y = -1.0340228244789477773935004734084941446781158447265625p-636 {- 153225179645481 -636 (-3.62621e-192)}
; -1.44240003008313077970115045900456607341766357421875p437 < -1.0340228244789477773935004734084941446781158447265625p-636 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110100 #b0111000101000001001000001101110011110100110110101100)))
(assert (= y (fp #b1 #b00110000011 #b0000100010110101101110000100011001110100011000101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.438634497147271762429454611265100538730621337890625p257 {- 1975434157904298 257 (-3.33165e+077)}
; Y = -1.40240340304028876516895252279937267303466796875p720 {- 1812263815984864 720 (-7.73517e+216)}
; -1.438634497147271762429454611265100538730621337890625p257 > -1.40240340304028876516895252279937267303466796875p720 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000000 #b0111000001001010010110011011010000100101000110101010)))
(assert (= y (fp #b1 #b11011001111 #b0110011100000011111010001100111111011011011011100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

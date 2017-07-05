(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7859220618204820762997542260563932359218597412109375p-621 {- 3539478304756975 -621 (-2.05227e-187)}
; Y = 1.8657485689331461120588073754333890974521636962890625p-483 {+ 3898984932443857 -483 (7.47077e-146)}
; -1.7859220618204820762997542260563932359218597412109375p-621 = 1.8657485689331461120588073754333890974521636962890625p-483 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010010 #b1100100100110010001100000011000010111001010011101111)))
(assert (= y (fp #b0 #b01000011100 #b1101110110100001101100101011111000100000011011010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

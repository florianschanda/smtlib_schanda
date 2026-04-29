(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8295224404929728567736901823082007467746734619140625p779 {- 3735836953899617 779 (-5.81707e+234)}
; Y = 1.22468843033476826320793406921438872814178466796875p-766 {+ 1011906731130124 -766 (3.15536e-231)}
; -1.8295224404929728567736901823082007467746734619140625p779 > 1.22468843033476826320793406921438872814178466796875p-766 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100001010 #b1101010001011011100101010010100100110111001001100001)))
(assert (= y (fp #b0 #b00100000001 #b0011100110000101001011100101010000010011110100001100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

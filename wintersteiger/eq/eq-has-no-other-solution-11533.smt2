(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1078368028411003098909759501111693680286407470703125p833 {+ 485653785092005 833 (6.34545e+250)}
; Y = -1.4080393435554927616948361901449970901012420654296875p-51 {- 1837645835589019 -51 (-6.25295e-016)}
; 1.1078368028411003098909759501111693680286407470703125p833 = -1.4080393435554927616948361901449970901012420654296875p-51 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000000 #b0001101110011011001100010101010110000001111110100101)))
(assert (= y (fp #b1 #b01111001100 #b0110100001110101010001000011010000001101010110011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

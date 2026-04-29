(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9670127532557255545242469452205114066600799560546875p-709 {- 4355038275225003 -709 (-7.30365e-214)}
; Y = -1.0110212899952999432429123771726153790950775146484375p-361 {- 49635477515975 -361 (-2.15244e-109)}
; -1.9670127532557255545242469452205114066600799560546875p-709 < -1.0110212899952999432429123771726153790950775146484375p-361 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111010 #b1111011110001110001001011101011000001100010110101011)))
(assert (= y (fp #b1 #b01010010110 #b0000001011010010010010101001000000010110111011000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

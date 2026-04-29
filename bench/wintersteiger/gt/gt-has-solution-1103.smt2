(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5330824173244266273030689262668602168560028076171875p245 {+ 2400789776020051 245 (8.66791e+073)}
; Y = 1.62681611536815484697626743582077324390411376953125p-780 {+ 2822928823601844 -780 (2.55824e-235)}
; 1.5330824173244266273030689262668602168560028076171875p245 > 1.62681611536815484697626743582077324390411376953125p-780 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110100 #b1000100001111000000101101101110001111011001001010011)))
(assert (= y (fp #b0 #b00011110011 #b1010000001110111000001010101110000011100101010110100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

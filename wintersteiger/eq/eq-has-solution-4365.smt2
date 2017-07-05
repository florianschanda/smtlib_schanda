(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5275782316062647137044905321090482175350189208984375p-1012 {+ 2376001127270759 -1012 (3.48055e-305)}
; Y = 1.0745624061012992722652370503055863082408905029296875p-589 {+ 335799224333659 -589 (5.30352e-178)}
; 1.5275782316062647137044905321090482175350189208984375p-1012 = 1.0745624061012992722652370503055863082408905029296875p-589 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001011 #b1000011100001111010111011111001011010100100101100111)))
(assert (= y (fp #b0 #b00110110010 #b0001001100010110100001011001011110110111010101011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

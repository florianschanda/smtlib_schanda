(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1686772408048955451675965377944521605968475341796875p-717 {- 759654758834811 -717 (-1.69507e-216)}
; Y = -1.2393027464209998012023561386740766465663909912109375p709 {- 1077723759610351 709 (-3.33768e+213)}
; -1.1686772408048955451675965377944521605968475341796875p-717 = -1.2393027464209998012023561386740766465663909912109375p709 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110010 #b0010101100101110011011101000000011010110001001111011)))
(assert (= y (fp #b1 #b11011000100 #b0011110101000010111100011101110110111000100111101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

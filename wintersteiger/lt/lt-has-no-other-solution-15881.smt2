(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5144529880525656739820306029287166893482208251953125p601 {- 2316890285293173 601 (-1.25685e+181)}
; Y = 1.832295991541289748028020767378620803356170654296875p-797 {+ 3748327917367310 -797 (2.19831e-240)}
; -1.5144529880525656739820306029287166893482208251953125p601 < 1.832295991541289748028020767378620803356170654296875p-797 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001011000 #b1000001110110011001100001110011100000011111001110101)))
(assert (= y (fp #b0 #b00011100010 #b1101010100010001010110011010000001000011000000001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

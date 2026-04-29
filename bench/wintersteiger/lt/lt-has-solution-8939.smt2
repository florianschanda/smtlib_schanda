(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.906130681794907300030672558932565152645111083984375p-211 {- 4080849800880518 -211 (-5.79193e-064)}
; Y = -1.3077765169814636880829539222759194672107696533203125p-388 {- 1386102207191109 -388 (-2.07441e-117)}
; -1.906130681794907300030672558932565152645111083984375p-211 < -1.3077765169814636880829539222759194672107696533203125p-388 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100101100 #b1110011111111000001011100010110000110110000110000110)))
(assert (= y (fp #b1 #b01001111011 #b0100111011001010011100010001101011101001100001000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

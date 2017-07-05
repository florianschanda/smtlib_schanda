(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.357876237309398437247409674455411732196807861328125p-275 {- 1611731288991362 -275 (-2.23672e-083)}
; Y = -1.8756100637942711983896515448577702045440673828125p379 {- 3943397157025736 379 (-2.30946e+114)}
; -1.357876237309398437247409674455411732196807861328125p-275 > -1.8756100637942711983896515448577702045440673828125p379 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011101100 #b0101101110011101110001101110111101000010011010000010)))
(assert (= y (fp #b1 #b10101111010 #b1110000000100111111110110010110000001011011111001000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

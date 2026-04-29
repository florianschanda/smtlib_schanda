(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7546073923401832583834902834496460855007171630859375p-183 {+ 3398449570954271 -183 (1.43117e-055)}
; 1.7546073923401832583834902834496460855007171630859375p-183 S == 1.873289829332441147613508292124606668949127197265625p-92
; [HW: 1.873289829332441147613508292124606668949127197265625p-92] 

; mpf : + 3932947749968026 -92
; mpfd: + 3932947749968026 -92 (3.78308e-028) class: Pos. norm. non-zero
; hwf : + 3932947749968026 -92 (3.78308e-028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001000 #b1100000100101101111100110011011101101011110000011111)))
(assert (= r (fp #b0 #b01110100011 #b1101111110001111111011000001100011101001100010011010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

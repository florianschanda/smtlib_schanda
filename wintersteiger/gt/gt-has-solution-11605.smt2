(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.474284900690705502057653575320728123188018798828125p785 {+ 2135989302018114 785 (3.00005e+236)}
; Y = 1.042840436977713114430343921412713825702667236328125p17 {+ 192936176009218 17 (136687)}
; 1.474284900690705502057653575320728123188018798828125p785 > 1.042840436977713114430343921412713825702667236328125p17 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100010000 #b0111100101101010101111000011100101110100000001000010)))
(assert (= y (fp #b0 #b10000010000 #b0000101011110111100101110100001111000100000000000010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

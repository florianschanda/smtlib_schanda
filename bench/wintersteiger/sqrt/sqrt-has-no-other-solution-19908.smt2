(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1411847471182661184485596095328219234943389892578125p844 {+ 635839574512221 844 (1.33867e+254)}
; 1.1411847471182661184485596095328219234943389892578125p844 S == 1.0682624898021393367031350862816907465457916259765625p422
; [HW: 1.0682624898021393367031350862816907465457916259765625p422] 

; mpf : + 307426923636297 422
; mpfd: + 307426923636297 422 (1.15701e+127) class: Pos. norm. non-zero
; hwf : + 307426923636297 422 (1.15701e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001011 #b0010010000100100101011101111111110010001001001011101)))
(assert (= r (fp #b0 #b10110100101 #b0001000101111001101001101000100100111110011001001001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

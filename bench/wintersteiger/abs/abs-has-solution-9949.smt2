(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4105704640211624845136384465149603784084320068359375p282 {- 1849044988775039 282 (-1.09611e+085)}
; -1.4105704640211624845136384465149603784084320068359375p282 | == 1.4105704640211624845136384465149603784084320068359375p282
; [HW: 1.4105704640211624845136384465149603784084320068359375p282] 

; mpf : + 1849044988775039 282
; mpfd: + 1849044988775039 282 (1.09611e+085) class: Pos. norm. non-zero
; hwf : + 1849044988775039 282 (1.09611e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011001 #b0110100100011011001001010101101110101100101001111111)))
(assert (= r (fp #b0 #b10100011001 #b0110100100011011001001010101101110101100101001111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

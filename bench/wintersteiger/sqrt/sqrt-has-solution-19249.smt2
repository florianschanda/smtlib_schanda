(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0045251993702299930788512938306666910648345947265625p-422 {+ 20379686197545 -422 (9.27476e-128)}
; 1.0045251993702299930788512938306666910648345947265625p-422 S == 1.0022600457816472907524030233616940677165985107421875p-211
; [HW: 1.0022600457816472907524030233616940677165985107421875p-211] 

; mpf : + 10178341340067 -211
; mpfd: + 10178341340067 -211 (3.04545e-064) class: Pos. norm. non-zero
; hwf : + 10178341340067 -211 (3.04545e-064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011001 #b0000000100101000100100000011111101001101100100101001)))
(assert (= r (fp #b0 #b01100101100 #b0000000010010100000111010100011010111000001110100011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

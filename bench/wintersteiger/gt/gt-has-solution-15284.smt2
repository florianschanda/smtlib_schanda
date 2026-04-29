(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4047409361430300833717410569079220294952392578125p620 {+ 1822791129195336 620 (6.11214e+186)}
; Y = 1.184516264658089568229115684516727924346923828125p465 {+ 830987380757968 465 (1.12847e+140)}
; 1.4047409361430300833717410569079220294952392578125p620 > 1.184516264658089568229115684516727924346923828125p465 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101011 #b0110011110011101000110100001110000010110001101001000)))
(assert (= y (fp #b0 #b10111010000 #b0010111100111100011101010011101001001001010111010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

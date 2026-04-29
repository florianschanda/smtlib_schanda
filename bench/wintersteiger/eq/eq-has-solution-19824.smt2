(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.036999651387743082153747309348545968532562255859375p-791 {+ 166631616202678 -791 (7.96255e-239)}
; Y = 1.2249246373422462141888900077901780605316162109375p316 {+ 1012970512920984 316 (1.63526e+095)}
; 1.036999651387743082153747309348545968532562255859375p-791 = 1.2249246373422462141888900077901780605316162109375p316 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101000 #b0000100101111000110011110010010010101100011110110110)))
(assert (= y (fp #b0 #b10100111011 #b0011100110010100101010010011100101110011000110011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

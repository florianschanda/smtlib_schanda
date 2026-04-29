(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2994289700159959988212676762486808001995086669921875p936 {+ 1348508197787971 936 (7.54794e+281)}
; Y = 1.701303606549170677197935219737701117992401123046875p1004 {+ 3158390661128430 1004 (2.91674e+302)}
; 1.2994289700159959988212676762486808001995086669921875p936 > 1.701303606549170677197935219737701117992401123046875p1004 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100111 #b0100110010100111011000001000000110110001100101000011)))
(assert (= y (fp #b0 #b11111101011 #b1011001110001000101000100001011010110010000011101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

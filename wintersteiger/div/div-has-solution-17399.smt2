(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.83359832691451973829543931060470640659332275390625p-683 {+ 3754193114468900 -683 (4.56896e-206)}
; Y = 1.544257170721329952556288844789378345012664794921875p982 {+ 2451116391254302 982 (6.31212e+295)}
; 1.83359832691451973829543931060470640659332275390625p-683 / 1.544257170721329952556288844789378345012664794921875p982 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010100 #b1101010101100110101100110011000000011001001000100100)))
(assert (= y (fp #b0 #b11111010101 #b1000101101010100011100000001110011011100100100011110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

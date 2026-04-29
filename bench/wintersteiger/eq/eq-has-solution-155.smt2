(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.747319344461170320670362343662418425083160400390625p-329 {+ 3365627121242090 -329 (1.59773e-099)}
; Y = -1.1513228325995148448868121704435907304286956787109375p-818 {- 681497452507823 -818 (-6.58659e-247)}
; 1.747319344461170320670362343662418425083160400390625p-329 = -1.1513228325995148448868121704435907304286956787109375p-818 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110110 #b1011111101010000010100100001000000100000111111101010)))
(assert (= y (fp #b1 #b00011001101 #b0010011010111101000101111101100100100111001010101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

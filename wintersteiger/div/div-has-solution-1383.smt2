(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.028001481205473854885212858789600431919097900390625p-439 {- 126107460322794 -439 (-7.24145e-133)}
; Y = -1.478189789780973928401408556965179741382598876953125p167 {- 2153575359069970 167 (-2.76528e+050)}
; -1.028001481205473854885212858789600431919097900390625p-439 / -1.478189789780973928401408556965179741382598876953125p167 == 1.3908924122088472952185611575259827077388763427734375p-607
; [HW: 1.3908924122088472952185611575259827077388763427734375p-607] 

; mpf : + 1760422921965719 -607
; mpfd: + 1760422921965719 -607 (2.6187e-183) class: Pos. norm. non-zero
; hwf : + 1760422921965719 -607 (2.6187e-183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001000 #b0000011100101011000110101110011000000100010111101010)))
(assert (= y (fp #b1 #b10010100110 #b0111101001101010101001010110010001100011111100010010)))
(assert (= r (fp #b0 #b00110100000 #b0110010000010001100001100110111010110001000010010111)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

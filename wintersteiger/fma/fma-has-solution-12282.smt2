(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6948490204017281346438039690838195383548736572265625p-714 {- 3129321789359977 -714 (-1.96659e-215)}
; Y = -1.850870397452770266255583919701166450977325439453125p305 {- 3831979604908882 305 (-1.20649e+092)}
; Z = 1.7149427093682307887689830749877728521823883056640625p679 {+ 3219815719502017 679 (4.30147e+204)}
; -1.6948490204017281346438039690838195383548736572265625p-714 x -1.850870397452770266255583919701166450977325439453125p305 1.7149427093682307887689830749877728521823883056640625p679 == 1.7149427093682307887689830749877728521823883056640625p679
; [HW: 1.7149427093682307887689830749877728521823883056640625p679] 

; mpf : + 3219815719502017 679
; mpfd: + 3219815719502017 679 (4.30147e+204) class: Pos. norm. non-zero
; hwf : + 3219815719502017 679 (4.30147e+204) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100110101 #b1011000111100001101000000001101001001000011101101001)))
(assert (= y (fp #b1 #b10100110000 #b1101100111010010101001000111001000110001101101010010)))
(assert (= z (fp #b0 #b11010100110 #b1011011100000110011111000100001101000000000011000001)))
(assert (= r (fp #b0 #b11010100110 #b1011011100000110011111000100001101000000000011000001)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)

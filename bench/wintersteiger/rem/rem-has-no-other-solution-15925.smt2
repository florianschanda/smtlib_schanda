(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.715207573297076404372774049988947808742523193359375p236 {- 3221008560593270 236 (-1.89407e+071)}
; Y = -1.50985124481377486205246896133758127689361572265625p-434 {- 2296165876157700 -434 (-3.40342e-131)}
; -1.715207573297076404372774049988947808742523193359375p236 % -1.50985124481377486205246896133758127689361572265625p-434 == -1.06705171957975153418374247848987579345703125p-440
; [HW: -1.06705171957975153418374247848987579345703125p-440] 

; mpf : - 301974099313920 -440
; mpfd: - 301974099313920 -440 (-3.75826e-133) class: Neg. norm. non-zero
; hwf : - 301974099313920 -440 (-3.75826e-133) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101011 #b1011011100010111110101111111000100101001100101110110)))
(assert (= y (fp #b1 #b01001001101 #b1000001010000101100111000111011001001100110100000100)))
(assert (= r (fp #b1 #b01001000111 #x112a4d2ebc500)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

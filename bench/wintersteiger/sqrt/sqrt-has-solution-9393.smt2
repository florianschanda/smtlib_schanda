(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1649305302071526480034435735433362424373626708984375p822 {+ 742781074382951 822 (3.25804e+247)}
; 1.1649305302071526480034435735433362424373626708984375p822 S == 1.0793194755062807121959167488967068493366241455078125p411
; [HW: 1.0793194755062807121959167488967068493366241455078125p411] 

; mpf : + 357223160333309 411
; mpfd: + 357223160333309 411 (5.70792e+123) class: Pos. norm. non-zero
; hwf : + 357223160333309 411 (5.70792e+123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110101 #b0010101000111000111000110010000101011010000001100111)))
(assert (= r (fp #b0 #b10110011010 #b0001010001001110010001111111100100111100001111111101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

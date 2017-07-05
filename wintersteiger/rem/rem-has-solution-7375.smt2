(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8608903075415288430605187386390753090381622314453125p-474 {+ 3877105268250901 -474 (3.81507e-143)}
; Y = 1.9784771890258598947553991820313967764377593994140625p131 {+ 4406669503887393 131 (5.38593e+039)}
; 1.8608903075415288430605187386390753090381622314453125p-474 % 1.9784771890258598947553991820313967764377593994140625p131 == 1.8608903075415288430605187386390753090381622314453125p-474
; [HW: 1.8608903075415288430605187386390753090381622314453125p-474] 

; mpf : + 3877105268250901 -474
; mpfd: + 3877105268250901 -474 (3.81507e-143) class: Pos. norm. non-zero
; hwf : + 3877105268250901 -474 (3.81507e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100101 #b1101110001100011010011101010010001010101100100010101)))
(assert (= y (fp #b0 #b10010000010 #b1111101001111101011110110010011010111111100000100001)))
(assert (= r (fp #b0 #b01000100101 #xdc634ea455915)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.42771554990522009376263667945750057697296142578125p-6 {- 1926259591173716 -6 (-0.0223081)}
; Y = -1.4267788039165036906297245877794921398162841796875p138 {- 1922040862287992 138 (-4.9716e+041)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.42771554990522009376263667945750057697296142578125p-6 x -1.4267788039165036906297245877794921398162841796875p138 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111001 #b0110110101111110110001000010101011010101011001010100)))
(assert (= y (fp #b1 #b10010001001 #b0110110101000001011000000010110101110010100001111000)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.228469201845019842522788167116232216358184814453125p-902 {- 1028933812294866 -902 (-3.63336e-272)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.228469201845019842522788167116232216358184814453125p-902 m +oo == -1.228469201845019842522788167116232216358184814453125p-902
; [HW: -1.228469201845019842522788167116232216358184814453125p-902] 

; mpf : - 1028933812294866 -902
; mpfd: - 1028933812294866 -902 (-3.63336e-272) class: Neg. norm. non-zero
; hwf : - 1028933812294866 -902 (-3.63336e-272) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111001 #b0011101001111100111101010010011000010001010011010010)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b00001111001 #b0011101001111100111101010010011000010001010011010010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

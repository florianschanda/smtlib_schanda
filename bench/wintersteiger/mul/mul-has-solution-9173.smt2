(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0750480447519408233603144253720529377460479736328125p410 {- 337986346379725 410 (-2.84267e+123)}
; Y = 1.3336703783715935234255312025197781622409820556640625p762 {+ 1502717791698881 762 (3.23523e+229)}
; -1.0750480447519408233603144253720529377460479736328125p410 * 1.3336703783715935234255312025197781622409820556640625p762 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110011001 #b0001001100110110010110010100000111010110100111001101)))
(assert (= y (fp #b0 #b11011111001 #b0101010101101011011011000000001010111111111111000001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

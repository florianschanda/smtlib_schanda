(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6001469122424951674332760376273654401302337646484375p507 {- 2702821410342855 507 (-6.70452e+152)}
; Y = -1.1289582246052074498976480754208751022815704345703125p-808 {- 580776212278373 -808 (-6.61365e-244)}
; -1.6001469122424951674332760376273654401302337646484375p507 / -1.1289582246052074498976480754208751022815704345703125p-808 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111010 #b1001100110100011001110100110000011100000011111000111)))
(assert (= y (fp #b1 #b00011010111 #b0010000100000011011001111111110100111010110001100101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

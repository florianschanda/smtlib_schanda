(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.543239163715400596998961191275157034397125244140625p797 {- 2446531695281738 797 (-1.28629e+240)}
; Y = -1.8623943790302679435200161606189794838428497314453125p-437 {- 3883879004047125 -437 (-5.24763e-132)}
; -1.543239163715400596998961191275157034397125244140625p797 / -1.8623943790302679435200161606189794838428497314453125p-437 == +oo
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
(assert (= x (fp #b1 #b11100011100 #b1000101100010001101110001100101000010000011001001010)))
(assert (= y (fp #b1 #b01001001010 #b1101110011000101111000001100011000110000011100010101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

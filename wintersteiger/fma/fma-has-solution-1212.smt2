(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.023162608929307992866597487591207027435302734375p-582 {- 104315116942960 -582 (-6.46379e-176)}
; Z = -1.5543553180578666417233080210280604660511016845703125p473 {- 2496594403836261 473 (-3.79086e+142)}
; -oo x -1.023162608929307992866597487591207027435302734375p-582 -1.5543553180578666417233080210280604660511016845703125p473 == +oo
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
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b00110111001 #b0000010111101101111111000001011111010111011001110000)))
(assert (= z (fp #b1 #b10111011000 #b1000110111101010001110101110100101101100000101100101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)

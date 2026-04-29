(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.141393270123369330093510143342427909374237060546875p903 {- 636778678640302 903 (-7.7183e+271)}
; Y = -1.200912710731925070462011717609129846096038818359375p684 {- 904830409186294 684 (-9.63892e+205)}
; -1.141393270123369330093510143342427909374237060546875p903 * -1.200912710731925070462011717609129846096038818359375p684 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000110 #b0010010000110010010110010110111100001101111010101110)))
(assert (= y (fp #b1 #b11010101011 #b0011001101101111000000111111000111110001101111110110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = NaN {- 2141338920868732 1024 (-1.#SNAN)}
; Y = 1.3705981841630154871580771214212290942668914794921875p858 {+ 1669025844100739 858 (2.63419e+258)}
; NaN m 1.3705981841630154871580771214212290942668914794921875p858 == 1.3705981841630154871580771214212290942668914794921875p858
; [HW: 1.3705981841630154871580771214212290942668914794921875p858] 

; mpf : + 1669025844100739 858
; mpfd: + 1669025844100739 858 (2.63419e+258) class: Pos. norm. non-zero
; hwf : + 1669025844100739 858 (2.63419e+258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b0 #b11101011001 #b0101111011011111100001011100100011101111111010000011)))
(assert (= r (fp #b0 #b11101011001 #b0101111011011111100001011100100011101111111010000011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

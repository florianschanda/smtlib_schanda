(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = NaN {+ 1062583861840371 1024 (1.#SNAN)}
; Y = 1.297010173101365015924102408462204039096832275390625p-8 {+ 1337614904904554 -8 (0.00506645)}
; NaN M 1.297010173101365015924102408462204039096832275390625p-8 == 1.297010173101365015924102408462204039096832275390625p-8
; [HW: 1.297010173101365015924102408462204039096832275390625p-8] 

; mpf : + 1337614904904554 -8
; mpfd: + 1337614904904554 -8 (0.00506645) class: Pos. norm. non-zero
; hwf : + 1337614904904554 -8 (0.00506645) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b0 #b01111110111 #b0100110000001000110110111101010000001100101101101010)))
(assert (= r (fp #b0 #b01111110111 #b0100110000001000110110111101010000001100101101101010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)

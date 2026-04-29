(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.925901650565633449474489680142141878604888916015625p443 {- 4169890328469114 443 (-4.37444e+133)}
; Y = -1.3514601644017165682498671230860054492950439453125p-877 {- 1582835865435144 -877 (-1.34121e-264)}
; -1.925901650565633449474489680142141878604888916015625p443 / -1.3514601644017165682498671230860054492950439453125p-877 == +oo
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
(assert (= x (fp #b1 #b10110111010 #b1110110100000111111000111111110001111101111001111010)))
(assert (= y (fp #b1 #b00010010010 #b0101100111111001010010110001011111110011110000001000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

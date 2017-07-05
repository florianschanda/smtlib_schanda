(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4658121507258743410062606926658190786838531494140625p-978 {- 2097831428433697 -978 (-5.73776e-295)}
; Y = 1.7552501849210617734797779121436178684234619140625p-897 {+ 3401344451381992 -897 (1.66124e-270)}
; -1.4658121507258743410062606926658190786838531494140625p-978 * 1.7552501849210617734797779121436178684234619140625p-897 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000101101 #b0111011100111111011101110001000101110010011100100001)))
(assert (= y (fp #b0 #b00001111110 #b1100000101011000000100110111110010001000101011101000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

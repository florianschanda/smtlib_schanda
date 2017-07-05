(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.916753174151366589939016193966381251811981201171875p249 {+ 4128689253498814 249 (1.73394e+075)}
; Y = 1.8167792776615996341860181928495876491069793701171875p4 {+ 3678446850520723 4 (29.0685)}
; 1.916753174151366589939016193966381251811981201171875p249 + 1.8167792776615996341860181928495876491069793701171875p4 == 1.916753174151366589939016193966381251811981201171875p249
; [HW: 1.916753174151366589939016193966381251811981201171875p249] 

; mpf : + 4128689253498814 249
; mpfd: + 4128689253498814 249 (1.73394e+075) class: Pos. norm. non-zero
; hwf : + 4128689253498814 249 (1.73394e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011111000 #b1110101010110000010101100000010101111011111110111110)))
(assert (= y (fp #b0 #b10000000011 #b1101000100011000011100100101110110011011011010010011)))
(assert (= r (fp #b0 #b10011111000 #b1110101010110000010101100000010101111011111110111110)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

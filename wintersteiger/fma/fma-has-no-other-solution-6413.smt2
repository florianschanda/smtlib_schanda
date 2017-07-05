(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7782380609400705306910595027147792279720306396484375p782 {+ 3504872641255239 782 (4.52321e+235)}
; Y = -1.736901231769463205267811645171605050563812255859375p792 {- 3318708112805814 792 (-4.52409e+238)}
; Z = -1.157815043471304594646653640666045248508453369140625p-164 {- 710735770970826 -164 (-4.95131e-050)}
; 1.7782380609400705306910595027147792279720306396484375p782 x -1.736901231769463205267811645171605050563812255859375p792 -1.157815043471304594646653640666045248508453369140625p-164 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001101 #b1100011100111010100111000000110000111101011101000111)))
(assert (= y (fp #b1 #b11100010111 #b1011110010100101100011110010001011010100111110110110)))
(assert (= z (fp #b1 #b01101011011 #b0010100001100110100100010001001010000110101011001010)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)

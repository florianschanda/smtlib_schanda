(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5191661570378098833344893137109465897083282470703125p381 {- 2338116511378853 381 (-7.48227e+114)}
; Y = 1.251889586269902654436236844048835337162017822265625p-546 {+ 1134409846863642 -546 (5.43486e-165)}
; Z = -1.623765119571237480755598880932666361331939697265625p-121 {- 2809188360067738 -121 (-6.10793e-037)}
; -1.5191661570378098833344893137109465897083282470703125p381 x 1.251889586269902654436236844048835337162017822265625p-546 -1.623765119571237480755598880932666361331939697265625p-121 == -1.6237651195713456164781973711797036230564117431640625p-121
; [HW: -1.6237651195713456164781973711797036230564117431640625p-121] 

; mpf : - 2809188360068225 -121
; mpfd: - 2809188360068225 -121 (-6.10793e-037) class: Neg. norm. non-zero
; hwf : - 2809188360068225 -121 (-6.10793e-037) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111100 #b1000010011101000000100101100000110101010110110100101)))
(assert (= y (fp #b0 #b00111011101 #b0100000001111011110101011111111100111011011100011010)))
(assert (= z (fp #b1 #b01110000110 #b1001111110101111000100100010010011110001101010011010)))
(assert (= r (fp #b1 #b01110000110 #b1001111110101111000100100010010011110001110010000001)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)

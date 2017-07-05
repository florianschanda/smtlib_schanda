(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.665812679640537030678615337819792330265045166015625p-816 {+ 2998553735927674 -816 (3.81197e-246)}
; Y = 1.904183832235897710916106007061898708343505859375p-524 {+ 4072081969932016 -524 (3.4673e-158)}
; Z = 1.8414011974820627681737050806987099349498748779296875p687 {+ 3789334119449307 687 (1.18238e+207)}
; 1.665812679640537030678615337819792330265045166015625p-816 x 1.904183832235897710916106007061898708343505859375p-524 1.8414011974820627681737050806987099349498748779296875p687 == 1.8414011974820627681737050806987099349498748779296875p687
; [HW: 1.8414011974820627681737050806987099349498748779296875p687] 

; mpf : + 3789334119449307 687
; mpfd: + 3789334119449307 687 (1.18238e+207) class: Pos. norm. non-zero
; hwf : + 3789334119449307 687 (1.18238e+207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011001111 #b1010101001110010101100110010010001010001011101111010)))
(assert (= y (fp #b0 #b00111110011 #b1110011101111000100101110111010100000110011011110000)))
(assert (= z (fp #b0 #b11010101110 #b1101011101100110000100011010001000000000001011011011)))
(assert (= r (fp #b0 #b11010101110 #b1101011101100110000100011010001000000000001011011011)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)

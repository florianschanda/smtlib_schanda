(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.432450773383558750850852447911165654659271240234375p890 {+ 1947585141866278 890 (1.18243e+268)}
; Y = -1.4402377111351685190498983502038754522800445556640625p915 {- 1982654391822785 915 (-3.98915e+275)}
; Z = -1.7843764174792882126752147087245248258113861083984375p-393 {- 3532517341477927 -393 (-8.84501e-119)}
; 1.432450773383558750850852447911165654659271240234375p890 x -1.4402377111351685190498983502038754522800445556640625p915 -1.7843764174792882126752147087245248258113861083984375p-393 == -oo
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
(assert (= x (fp #b0 #b11101111001 #b0110111010110101000110000000100011001111111100100110)))
(assert (= y (fp #b1 #b11110010010 #b0111000010110011011010110010101111001010100111000001)))
(assert (= z (fp #b1 #b01001110110 #b1100100011001100111001001001010011010011110000100111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)

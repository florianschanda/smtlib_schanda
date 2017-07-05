(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4853288458910383074140781900496222078800201416015625p-812 {+ 2185726809507033 -812 (5.43834e-245)}
; Y = -1.9058717521608736777949388851993717253208160400390625p-544 {- 4079683685477169 -544 (-3.3096e-164)}
; 1.4853288458910383074140781900496222078800201416015625p-812 + -1.9058717521608736777949388851993717253208160400390625p-544 == -1.9058717521608736777949388851993717253208160400390625p-544
; [HW: -1.9058717521608736777949388851993717253208160400390625p-544] 

; mpf : - 4079683685477169 -544
; mpfd: - 4079683685477169 -544 (-3.3096e-164) class: Neg. norm. non-zero
; hwf : - 4079683685477169 -544 (-3.3096e-164) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010011 #b0111110000111110100000101110000011101000010011011001)))
(assert (= y (fp #b1 #b00111011111 #b1110011111100111001101100000110111100110101100110001)))
(assert (= r (fp #b1 #b00111011111 #b1110011111100111001101100000110111100110101100110001)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)

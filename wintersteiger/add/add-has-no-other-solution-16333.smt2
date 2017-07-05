(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4640569132618796999167898320592939853668212890625p150 {- 2089926541644904 150 (-2.08957e+045)}
; Y = 0.851138369000043581991121754981577396392822265625p-1022 {+ 3833186441469328 -1023 (1.89385e-308)}
; -1.4640569132618796999167898320592939853668212890625p150 + 0.851138369000043581991121754981577396392822265625p-1022 == -1.4640569132618796999167898320592939853668212890625p150
; [HW: -1.4640569132618796999167898320592939853668212890625p150] 

; mpf : - 2089926541644904 150
; mpfd: - 2089926541644904 150 (-2.08957e+045) class: Neg. norm. non-zero
; hwf : - 2089926541644904 150 (-2.08957e+045) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010101 #b0111011011001100011011110001000111110001010001101000)))
(assert (= y (fp #b0 #b00000000000 #b1101100111100100001101000100001100111001110110010000)))
(assert (= r (fp #b1 #b10010010101 #b0111011011001100011011110001000111110001010001101000)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

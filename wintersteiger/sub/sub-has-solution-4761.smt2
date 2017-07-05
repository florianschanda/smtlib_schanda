(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7704433241922374886456736930995248258113861083984375p-18 {+ 3469768267742247 -18 (6.75371e-006)}
; Y = -1.76490620584309976237591399694792926311492919921875p576 {- 3444831303608364 576 (-4.36515e+173)}
; 1.7704433241922374886456736930995248258113861083984375p-18 - -1.76490620584309976237591399694792926311492919921875p576 == 1.76490620584309976237591399694792926311492919921875p576
; [HW: 1.76490620584309976237591399694792926311492919921875p576] 

; mpf : + 3444831303608364 576
; mpfd: + 3444831303608364 576 (4.36515e+173) class: Pos. norm. non-zero
; hwf : + 3444831303608364 576 (4.36515e+173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101101 #b1100010100111011110001100001000011010011110000100111)))
(assert (= y (fp #b1 #b11000111111 #b1100001111010000111001001010001010011010100000101100)))
(assert (= r (fp #b0 #b11000111111 #b1100001111010000111001001010001010011010100000101100)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)

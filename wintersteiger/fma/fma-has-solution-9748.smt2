(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.962503344560569740195887789013795554637908935546875p-713 {+ 4334729703905838 -713 (4.55432e-215)}
; Y = 1.5998248188292947258304366187076084315776824951171875p-679 {+ 2701370830567187 -679 (6.37831e-205)}
; Z = 1.8380465753674199991252180552692152559757232666015625p473 {+ 3774226244543833 473 (4.48275e+142)}
; 1.962503344560569740195887789013795554637908935546875p-713 x 1.5998248188292947258304366187076084315776824951171875p-679 1.8380465753674199991252180552692152559757232666015625p473 == 1.8380465753674199991252180552692152559757232666015625p473
; [HW: 1.8380465753674199991252180552692152559757232666015625p473] 

; mpf : + 3774226244543833 473
; mpfd: + 3774226244543833 473 (4.48275e+142) class: Pos. norm. non-zero
; hwf : + 3774226244543833 473 (4.48275e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110110 #b1111011001100110100111101000001100101101101000101110)))
(assert (= y (fp #b0 #b00101011000 #b1001100110001110000111101000110000110011011100010011)))
(assert (= z (fp #b0 #b10111011000 #b1101011010001010001110000110100110111010010101011001)))
(assert (= r (fp #b0 #b10111011000 #b1101011010001010001110000110100110111010010101011001)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)

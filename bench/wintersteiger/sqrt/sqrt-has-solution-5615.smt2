(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9147190343669653334046643067267723381519317626953125p225 {+ 4119528302323765 225 (1.03241e+068)}
; 1.9147190343669653334046643067267723381519317626953125p225 S == 1.9568950070798203366706502492888830602169036865234375p112
; [HW: 1.9568950070798203366706502492888830602169036865234375p112] 

; mpf : + 4309471997317367 112
; mpfd: + 4309471997317367 112 (1.01608e+034) class: Pos. norm. non-zero
; hwf : + 4309471997317367 112 (1.01608e+034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100000 #b1110101000101011000001101101000110100010100000110101)))
(assert (= r (fp #b0 #b10001101111 #b1111010011110111000100100011100100011101000011110111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

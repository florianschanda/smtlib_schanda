(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.30929560452187576657934187096543610095977783203125p-104 {+ 1392943569272052 -104 (6.45533e-032)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.30929560452187576657934187096543610095977783203125p-104 m +oo == 1.30929560452187576657934187096543610095977783203125p-104
; [HW: 1.30929560452187576657934187096543610095977783203125p-104] 

; mpf : + 1392943569272052 -104
; mpfd: + 1392943569272052 -104 (6.45533e-032) class: Pos. norm. non-zero
; hwf : + 1392943569272052 -104 (6.45533e-032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010111 #b0100111100101101111111110010101000110111110011110100)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b0 #b01110010111 #b0100111100101101111111110010101000110111110011110100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

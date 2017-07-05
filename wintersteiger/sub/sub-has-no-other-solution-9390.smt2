(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4210745536082411977218953325063921511173248291015625p550 {+ 1896351202725273 550 (5.23738e+165)}
; Y = -1.109668581081999949589089737855829298496246337890625p765 {- 493903380895146 765 (-2.15348e+230)}
; 1.4210745536082411977218953325063921511173248291015625p550 - -1.109668581081999949589089737855829298496246337890625p765 == 1.109668581081999949589089737855829298496246337890625p765
; [HW: 1.109668581081999949589089737855829298496246337890625p765] 

; mpf : + 493903380895146 765
; mpfd: + 493903380895146 765 (2.15348e+230) class: Pos. norm. non-zero
; hwf : + 493903380895146 765 (2.15348e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100101 #b0110101111001011100010101011110011101100110110011001)))
(assert (= y (fp #b1 #b11011111100 #b0001110000010011001111010111100100100101010110101010)))
(assert (= r (fp #b0 #b11011111100 #b0001110000010011001111010111100100100101010110101010)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

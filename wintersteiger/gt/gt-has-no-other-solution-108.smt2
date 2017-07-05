(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.01519192584243445054426047136075794696807861328125p-982 {- 68418351563028 -982 (-2.48366e-296)}
; Y = 1.0400212749343837881355057106702588498592376708984375p-275 {+ 180239798881383 -275 (1.71314e-083)}
; -1.01519192584243445054426047136075794696807861328125p-982 > 1.0400212749343837881355057106702588498592376708984375p-275 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000101001 #b0000001111100011100111100011100010101000000100010100)))
(assert (= y (fp #b0 #b01011101100 #b0000101000111110110101011001001011111100110001100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

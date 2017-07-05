(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.53183639789284153920334574650041759014129638671875p585 {+ 2395178203372268 585 (1.93981e+176)}
; Y = -1.617059713215280414289054533583112061023712158203125p-879 {- 2778989894501682 -879 (-4.01199e-265)}
; 1.53183639789284153920334574650041759014129638671875p585 = -1.617059713215280414289054533583112061023712158203125p-879 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001001000 #b1000100000100110011011100001111111000101101011101100)))
(assert (= y (fp #b1 #b00010010000 #b1001110111110111101000000001011111110000010100110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

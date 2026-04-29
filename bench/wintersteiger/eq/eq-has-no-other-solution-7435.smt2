(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.968168539468732713970666736713610589504241943359375p-762 {- 4360243473583222 -762 (-8.11345e-230)}
; Y = 1.7857069959905709222169889471842907369136810302734375p618 {+ 3538509734365527 618 (1.94244e+186)}
; -1.968168539468732713970666736713610589504241943359375p-762 = 1.7857069959905709222169889471842907369136810302734375p618 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100000101 #b1111011111011001111001001011011000001000110001110110)))
(assert (= y (fp #b0 #b11001101001 #b1100100100100100000101111111110000000100100101010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

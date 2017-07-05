(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6727815169507780357349702171632088720798492431640625p208 {+ 3029938589041281 208 (6.88142e+062)}
; Y = 1.298286380184882293775672224001027643680572509765625p905 {+ 1343362430650330 905 (3.51169e+272)}
; 1.6727815169507780357349702171632088720798492431640625p208 = 1.298286380184882293775672224001027643680572509765625p905 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001111 #b1010110000111011011010001101010010101000001010000001)))
(assert (= y (fp #b0 #b11110001000 #b0100110001011100011111110000011110111100011111011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

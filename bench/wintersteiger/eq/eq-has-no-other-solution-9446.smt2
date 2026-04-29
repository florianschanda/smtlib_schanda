(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3368157556471016444987753857276402413845062255859375p596 {+ 1516883311624799 596 (3.46696e+179)}
; Y = 1.14092404889354526176248327828943729400634765625p704 {+ 634665494084512 704 (9.60226e+211)}
; 1.3368157556471016444987753857276402413845062255859375p596 = 1.14092404889354526176248327828943729400634765625p704 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010011 #b0101011000111001100011101010111101001000001001011111)))
(assert (= y (fp #b0 #b11010111111 #b0010010000010011100110010011010100110111101110100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

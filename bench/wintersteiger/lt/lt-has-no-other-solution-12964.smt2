(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.557505804284101014189900524797849357128143310546875p433 {+ 2510782932430766 433 (3.45476e+130)}
; Y = -1.7413453949430846012802476252545602619647979736328125p311 {- 3338722844418509 311 (-7.26463e+093)}
; 1.557505804284101014189900524797849357128143310546875p433 < -1.7413453949430846012802476252545602619647979736328125p311 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110110000 #b1000111010111000101100110100110010111010111110101110)))
(assert (= y (fp #b1 #b10100110110 #b1011110111001000110011111101001001010010000111001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

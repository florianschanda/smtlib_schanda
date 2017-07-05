(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.17256134728457883653618409880436956882476806640625p-384 {+ 777147219329380 -384 (2.97589e-116)}
; Y = 1.67446722086350252567399365943856537342071533203125p918 {+ 3037530324554484 918 (3.71033e+276)}
; 1.17256134728457883653618409880436956882476806640625p-384 = 1.67446722086350252567399365943856537342071533203125p918 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111111 #b0010110000101100111110101111111100100100000101100100)))
(assert (= y (fp #b0 #b11110010101 #b1010110010101001111000100011111111010101001011110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

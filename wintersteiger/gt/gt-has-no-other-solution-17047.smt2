(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5519586398306588481688095271238125860691070556640625p67 {+ 2485800724665281 67 (2.29029e+020)}
; Y = 1.3793741049541428100866369277355261147022247314453125p961 {+ 1708549077705493 961 (2.68849e+289)}
; 1.5519586398306588481688095271238125860691070556640625p67 > 1.3793741049541428100866369277355261147022247314453125p961 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000010 #b1000110101001101001010010101001011010001001111000001)))
(assert (= y (fp #b0 #b11111000000 #b0110000100011110101010010100110110111010001100010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7033234230586178359345694843796081840991973876953125p573 {+ 3167487106007733 573 (5.26605e+172)}
; Y = 1.9694478950133877948047711470280773937702178955078125p-944 {+ 4366005178737405 -944 (1.32443e-284)}
; 1.7033234230586178359345694843796081840991973876953125p573 < 1.9694478950133877948047711470280773937702178955078125p-944 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111100 #b1011010000001101000000001111110010001100001010110101)))
(assert (= y (fp #b0 #b00001001111 #b1111100000101101101111001011110001000010001011111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

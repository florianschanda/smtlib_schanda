(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.673810404606312918218691265792585909366607666015625p-808 {- 3034572287103354 -808 (-9.8055e-244)}
; Y = -1.965418143131815842394871651777066290378570556640625p-827 {- 4347856789665162 -827 (-2.19608e-249)}
; -1.673810404606312918218691265792585909366607666015625p-808 = -1.965418143131815842394871651777066290378570556640625p-827 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010111 #b1010110001111110110101101011001101111101000101111010)))
(assert (= y (fp #b1 #b00011000100 #b1111011100100101101001001011011110110111010110001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

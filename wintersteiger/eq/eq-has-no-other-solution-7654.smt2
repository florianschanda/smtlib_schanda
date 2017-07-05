(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1735682107575744481664514751173555850982666015625p-450 {- 781681729291176 -450 (-4.03655e-136)}
; Y = 1.6463015421114624015075378338224254548549652099609375p708 {+ 2910683384222159 708 (2.2169e+213)}
; -1.1735682107575744481664514751173555850982666015625p-450 = 1.6463015421114624015075378338224254548549652099609375p708 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111101 #b0010110001101110111101110101110011010100001110101000)))
(assert (= y (fp #b0 #b11011000011 #b1010010101110100000001001001001010111001000111001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

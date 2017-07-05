(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4359185008785078085935538183548487722873687744140625p190 {+ 1963202398120353 190 (2.25335e+057)}
; Y = -1.30333118971312966749565021018497645854949951171875p-437 {- 1366082232961900 -437 (-3.67237e-132)}
; 1.4359185008785078085935538183548487722873687744140625p190 > -1.30333118971312966749565021018497645854949951171875p-437 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111101 #b0110111110011000010110101101100011111110100110100001)))
(assert (= y (fp #b1 #b01001001010 #b0100110110100111000111001110001110101100101101101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

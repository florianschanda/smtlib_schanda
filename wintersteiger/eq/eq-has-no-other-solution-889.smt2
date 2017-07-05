(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0268539708050987702137035739724524319171905517578125p613 {- 120939532911261 613 (-3.49057e+184)}
; Y = 1.7279182180551677650015562903718091547489166259765625p54 {+ 3278252215589449 54 (3.11274e+016)}
; -1.0268539708050987702137035739724524319171905517578125p613 = 1.7279182180551677650015562903718091547489166259765625p54 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100100 #b0000011011011111111001101101111001100000001010011101)))
(assert (= y (fp #b0 #b10000110101 #b1011101001011000110110010010110010110101101001001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

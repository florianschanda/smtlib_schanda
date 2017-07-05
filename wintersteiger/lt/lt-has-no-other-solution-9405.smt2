(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3073958675112862248823830668698064982891082763671875p423 {- 1384387914379059 423 (-2.83201e+127)}
; Y = 1.4417052721681107296802792916423641145229339599609375p-538 {+ 1989263699143887 -538 (1.60228e-162)}
; -1.3073958675112862248823830668698064982891082763671875p423 < 1.4417052721681107296802792916423641145229339599609375p-538 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100110 #b0100111010110001011111101101110111100010111100110011)))
(assert (= y (fp #b0 #b00111100101 #b0111000100010011100110001100001001101110110011001111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

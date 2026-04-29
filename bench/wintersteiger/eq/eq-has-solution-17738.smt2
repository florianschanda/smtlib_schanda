(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3497570240963960852553782387985847890377044677734375p-240 {+ 1575165603390743 -240 (7.63935e-073)}
; Y = 1.4203309074038916737237059351173229515552520751953125p-760 {+ 1893002117956469 -760 (2.34203e-229)}
; 1.3497570240963960852553782387985847890377044677734375p-240 = 1.4203309074038916737237059351173229515552520751953125p-760 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001111 #b0101100110001001101011010010010000001010010100010111)))
(assert (= y (fp #b0 #b00100000111 #b0110101110011010110011100110110011001100001101110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

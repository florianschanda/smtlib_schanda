(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9558711864879725350618855372886173427104949951171875p587 {- 4304861119281427 587 (-9.90713e+176)}
; Y = 1.8845155506652890853303006224450655281543731689453125p946 {+ 3983503904379605 946 (1.12092e+285)}
; -1.9558711864879725350618855372886173427104949951171875p587 = 1.8845155506652890853303006224450655281543731689453125p946 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001010 #b1111010010110011111110010101110100100111100100010011)))
(assert (= y (fp #b0 #b11110110001 #b1110001001101111100111000111001011101001001011010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

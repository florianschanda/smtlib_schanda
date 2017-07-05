(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8395505449271059017490870246547274291515350341796875p-773 {+ 3780999521292411 -773 (3.70276e-233)}
; Y = -1.6215576186243063627756555433734320104122161865234375p697 {- 2799246659625719 697 (-1.0662e+210)}
; 1.8395505449271059017490870246547274291515350341796875p-773 > -1.6215576186243063627756555433734320104122161865234375p697 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111010 #b1101011011101100110010001101010111001101000001111011)))
(assert (= y (fp #b1 #b11010111000 #b1001111100011110011001100110110010010010001011110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

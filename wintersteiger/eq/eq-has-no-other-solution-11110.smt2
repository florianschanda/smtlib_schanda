(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1108474931641978411533955295453779399394989013671875p923 {+ 499212728909235 923 (7.87663e+277)}
; Y = -1.9327051059617008643698454761761240661144256591796875p21 {- 4200530367655675 21 (-4.05318e+006)}
; 1.1108474931641978411533955295453779399394989013671875p923 = -1.9327051059617008643698454761761240661144256591796875p21 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110011010 #b0001110001100000100000000101010111111011110110110011)))
(assert (= y (fp #b1 #b10000010100 #b1110111011000101110000110000011011101010111011111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

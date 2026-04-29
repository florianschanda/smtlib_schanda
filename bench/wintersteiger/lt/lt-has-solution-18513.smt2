(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8636103797164615958337208212469704449176788330078125p774 {+ 3889355384284349 774 (1.8517e+233)}
; Y = 1.9387601819833921723557068617083132266998291015625p-259 {+ 4227800005770664 -259 (2.09293e-078)}
; 1.8636103797164615958337208212469704449176788330078125p774 < 1.9387601819833921723557068617083132266998291015625p-259 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000101 #b1101110100010101100100011110000101011110010010111101)))
(assert (= y (fp #b0 #b01011111100 #b1111000001010010100101100101100001100111110110101000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

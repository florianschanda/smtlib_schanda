(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.06518020328811058305973347160033881664276123046875p-814 {+ 293545539240268 -814 (9.75004e-246)}
; Y = -1.829274431510900189579160723951645195484161376953125p491 {- 3734720020740370 491 (-1.16952e+148)}
; 1.06518020328811058305973347160033881664276123046875p-814 = -1.829274431510900189579160723951645195484161376953125p491 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010001 #b0001000010101111101001100101100101111000000101001100)))
(assert (= y (fp #b1 #b10111101010 #b1101010001001011010101000100001010111111100100010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

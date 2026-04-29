(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.843134030729855599162192447693087160587310791015625p-891 {- 3797138106618362 -891 (-1.11643e-268)}
; Y = 1.116018414033295602649786815163679420948028564453125p-788 {+ 522500486208466 -788 (6.85543e-238)}
; -1.843134030729855599162192447693087160587310791015625p-891 < 1.116018414033295602649786815163679420948028564453125p-788 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000100 #b1101011111010111101000011100000000100001000111111010)))
(assert (= y (fp #b0 #b00011101011 #b0001110110110011011000011111111000000001101111010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

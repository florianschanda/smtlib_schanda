(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.022900545526069127078017118037678301334381103515625 815 {- 103134888297786 815 (-2.23501e+245)}
; -1.022900545526069127078017118037678301334381103515625 815 I == -1.022900545526069127078017118037678301334381103515625 815
; [HW: -1.022900545526069127078017118037678301334381103515625 815] 

; mpf : - 103134888297786 815
; mpfd: - 103134888297786 815 (-2.23501e+245) class: Neg. norm. non-zero
; hwf : - 103134888297786 815 (-2.23501e+245) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100101110 #b0000010111011100110011110110011000011000010100111010)))
(assert (= r (fp #b1 #b11100101110 #b0000010111011100110011110110011000011000010100111010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

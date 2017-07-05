(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9880026991593979790451385269989259541034698486328125p611 {- 4449568587775309 611 (-1.68945e+184)}
; Y = 1.30095737342465422869963731500320136547088623046875p66 {+ 1355391514809676 66 (9.59937e+019)}
; -1.9880026991593979790451385269989259541034698486328125p611 > 1.30095737342465422869963731500320136547088623046875p66 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100010 #b1111110011101101101111101011000100111111110101001101)))
(assert (= y (fp #b0 #b10001000001 #b0100110100001011100010101101110001011001010101001100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

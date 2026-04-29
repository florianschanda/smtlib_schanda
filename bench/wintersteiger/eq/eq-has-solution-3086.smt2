(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6092167616493593396143069185200147330760955810546875p-862 {- 2743668380751915 -862 (-5.23309e-260)}
; Y = -1.0012023827809108933450943368370644748210906982421875p-30 {- 5415050644067 -30 (-9.32442e-010)}
; -1.6092167616493593396143069185200147330760955810546875p-862 = -1.0012023827809108933450943368370644748210906982421875p-30 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100001 #b1001101111110101101000010011001101110101100000101011)))
(assert (= y (fp #b1 #b01111100001 #b0000000001001110110011001010001010111000101001100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

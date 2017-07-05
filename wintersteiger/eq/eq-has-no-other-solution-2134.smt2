(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7637351992496912433949773912900127470493316650390625p-802 {- 3439557558750641 -802 (-6.61267e-242)}
; Y = 1.217818492444660449791626888327300548553466796875p-781 {+ 980967281408176 -781 (9.57538e-236)}
; -1.7637351992496912433949773912900127470493316650390625p-802 = 1.217818492444660449791626888327300548553466796875p-781 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011101 #b1100001110000100001001100110011110010100110110110001)))
(assert (= y (fp #b0 #b00011110010 #b0011011111000010111100111110010110000011100010110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.45614908030886880396792548708617687225341796875p163 {+ 2054312828104416 163 (1.70253e+049)}
; Y = -1.2661102586214438847633800833136774599552154541015625p-524 {- 1198454061567001 -524 (-2.30544e-158)}
; 1.45614908030886880396792548708617687225341796875p163 = -1.2661102586214438847633800833136774599552154541015625p-524 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010100010 #b0111010011000110001011111010011000000110111011100000)))
(assert (= y (fp #b1 #b00111110011 #b0100010000011111110011010100100111101000110000011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

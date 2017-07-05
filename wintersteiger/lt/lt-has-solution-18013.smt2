(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6019308979761177624823176302015781402587890625p-810 {+ 2710855767828032 -810 (2.3461e-244)}
; Y = 1.5166388933816399298137866935576312243938446044921875p-540 {+ 2326734727718659 -540 (4.2139e-163)}
; 1.6019308979761177624823176302015781402587890625p-810 < 1.5166388933816399298137866935576312243938446044921875p-540 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010101 #b1001101000011000001001001011000101000010011001000000)))
(assert (= y (fp #b0 #b00111100011 #b1000010001000010011100100100111011101010011100000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

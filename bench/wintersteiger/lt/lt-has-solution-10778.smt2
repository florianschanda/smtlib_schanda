(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5390097610112418724526150981546379625797271728515625p-554 {- 2427484158839289 -554 (-2.6099e-167)}
; Y = -1.07061828487333254855684572248719632625579833984375p-259 {- 318036481441084 -259 (-1.15575e-078)}
; -1.5390097610112418724526150981546379625797271728515625p-554 < -1.07061828487333254855684572248719632625579833984375p-259 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010101 #b1000100111111100100010110010111111000100100111111001)))
(assert (= y (fp #b1 #b01011111100 #b0001001000010100000010100011100000000111110100111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

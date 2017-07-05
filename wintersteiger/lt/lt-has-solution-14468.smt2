(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.90287850555461890422748183482326567173004150390625p141 {+ 4066203301176612 141 (5.30445e+042)}
; Y = -1.1895130531890358849267386176506988704204559326171875p-206 {- 853490915723987 -206 (-1.15662e-062)}
; 1.90287850555461890422748183482326567173004150390625p141 < -1.1895130531890358849267386176506988704204559326171875p-206 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001100 #b1110011100100011000010111011010110011110010100100100)))
(assert (= y (fp #b1 #b01100110001 #b0011000010000011111011010110110110011100101011010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

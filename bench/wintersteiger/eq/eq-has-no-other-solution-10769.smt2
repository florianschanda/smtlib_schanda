(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4507865039510619009632819143007509410381317138671875p-582 {+ 2030161931217651 -582 (9.16529e-176)}
; Y = 1.009315290507039275524903132463805377483367919921875p-845 {+ 41952338856350 -845 (4.3021e-255)}
; 1.4507865039510619009632819143007509410381317138671875p-582 = 1.009315290507039275524903132463805377483367919921875p-845 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110111001 #b0111001101100110101111101000101111110010101011110011)))
(assert (= y (fp #b0 #b00010110010 #b0000001001100010011111001010010000010100100110011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2880137182391500072498047302360646426677703857421875p-428 {+ 1297098474139427 -428 (1.85816e-129)}
; Y = -1.61510820043942526780256230267696082592010498046875p39 {- 2770201062291532 39 (-8.87915e+011)}
; 1.2880137182391500072498047302360646426677703857421875p-428 > -1.61510820043942526780256230267696082592010498046875p39 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010011 #b0100100110111011010001000101110010100010111100100011)))
(assert (= y (fp #b1 #b10000100110 #b1001110101110111101110110010010001100011100001001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6211670810688858512804699785192497074604034423828125p-972 {+ 2797487834836653 -972 (4.06136e-293)}
; Y = -1.6116638374317127091472912070457823574542999267578125p-358 {- 2754689030333469 -358 (-2.74496e-108)}
; 1.6211670810688858512804699785192497074604034423828125p-972 < -1.6116638374317127091472912070457823574542999267578125p-358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110011 #b1001111100000100110011100100101010001010111010101101)))
(assert (= y (fp #b1 #b01010011001 #b1001110010010110000000000101000111101010010000011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

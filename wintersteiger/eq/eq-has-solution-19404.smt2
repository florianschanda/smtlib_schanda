(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8401157959467002722675488257664255797863006591796875p-814 {+ 3783545185573627 -814 (1.68434e-245)}
; Y = 1.4309673840007277600960833296994678676128387451171875p-50 {+ 1940904549994515 -50 (1.27095e-015)}
; 1.8401157959467002722675488257664255797863006591796875p-814 = 1.4309673840007277600960833296994678676128387451171875p-50 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010001 #b1101011100010001110101000010110001110001101011111011)))
(assert (= y (fp #b0 #b01111001101 #b0110111001010011111000001110001111101101000000010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

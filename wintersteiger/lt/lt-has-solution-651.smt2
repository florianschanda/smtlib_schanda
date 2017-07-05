(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.983921696988189875554553509573452174663543701171875p-891 {+ 4431189387917758 -891 (1.20171e-268)}
; Y = -1.57246637982948644918224090361036360263824462890625p-283 {- 2578159374882212 -283 (-1.0118e-085)}
; 1.983921696988189875554553509573452174663543701171875p-891 < -1.57246637982948644918224090361036360263824462890625p-283 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000100 #b1111101111100010010010101101011001100011100110111110)))
(assert (= y (fp #b1 #b01011100100 #b1001001010001101001010000001101101101101010110100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

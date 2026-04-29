(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.514416546128793950032331849797628819942474365234375p-444 {+ 2316726165458854 -444 (3.33371e-134)}
; Y = -1.5338200775353783011922814694116823375225067138671875p755 {- 2404111902271219 755 (-2.90684e+227)}
; 1.514416546128793950032331849797628819942474365234375p-444 > -1.5338200775353783011922814694116823375225067138671875p755 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000011 #b1000001110110000110011011000001000100100111110100110)))
(assert (= y (fp #b1 #b11011110010 #b1000100010101000011011101011111011110110011011110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

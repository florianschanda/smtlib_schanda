(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1401326396128037554689171884092502295970916748046875p-557 {- 631101303542667 -557 (-2.41684e-168)}
; Y = -1.34522413533000406715700592030771076679229736328125p-91 {- 1554751287231508 -91 (-5.43332e-028)}
; -1.1401326396128037554689171884092502295970916748046875p-557 = -1.34522413533000406715700592030771076679229736328125p-91 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010010 #b0010001111011111101110111001000000111101001110001011)))
(assert (= y (fp #b1 #b01110100100 #b0101100001100000100110111110001100001000010000010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

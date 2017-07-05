(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.41423787941334477835653160582296550273895263671875p-903 {+ 1865561559368684 -903 (2.0914e-272)}
; Y = -1.9169928098751090050910761419800110161304473876953125p-875 {- 4129768476854965 -875 (-7.60982e-264)}
; 1.41423787941334477835653160582296550273895263671875p-903 * -1.9169928098751090050910761419800110161304473876953125p-875 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111000 #b0110101000001011011111100110000011011000001111101100)))
(assert (= y (fp #b1 #b00010010100 #b1110101011000000000010100111000100010100101010110101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)

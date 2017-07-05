(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.919615646426624522291604080237448215484619140625p-551 {- 4141580682571024 -551 (-2.60427e-166)}
; Y = -1.3714488420299779658506622581626288592815399169921875p-420 {- 1672856866553411 -420 (-5.06502e-127)}
; -1.919615646426624522291604080237448215484619140625p-551 < -1.3714488420299779658506622581626288592815399169921875p-420 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011000 #b1110101101101011111011100101011001001010110100010000)))
(assert (= y (fp #b1 #b01001011011 #b0101111100010111010001010111010010100111111001000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

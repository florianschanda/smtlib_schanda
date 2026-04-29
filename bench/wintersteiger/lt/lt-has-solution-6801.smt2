(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.60541209107565663316563586704432964324951171875p-556 {+ 2726533667773920 -556 (6.80627e-168)}
; Y = -1.33404932625217131914041601703502237796783447265625p105 {- 1504424421232644 105 (-5.41155e+031)}
; 1.60541209107565663316563586704432964324951171875p-556 < -1.33404932625217131914041601703502237796783447265625p105 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010011 #b1001101011111100010010010110101111000101110111100000)))
(assert (= y (fp #b1 #b10001101000 #b0101010110000100010000011011001110000001000000000100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

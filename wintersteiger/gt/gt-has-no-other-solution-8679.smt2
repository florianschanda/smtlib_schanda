(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.67490536669413625503466391819529235363006591796875p-655 {- 3039503557954060 -655 (-1.12032e-197)}
; Y = 1.2985396017488561870578678281162865459918975830078125p708 {+ 1344502839191485 708 (1.74861e+213)}
; -1.67490536669413625503466391819529235363006591796875p-655 > 1.2985396017488561870578678281162865459918975830078125p708 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101110000 #b1010110011000110100110010001110111011000101000001100)))
(assert (= y (fp #b0 #b11011000011 #b0100110001101101000101110110001000010010011110111101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8528859042139202983889845199882984161376953125p-357 {- 3841056640407360 -357 (-6.31161e-108)}
; -1.8528859042139202983889845199882984161376953125p-357 | == 1.8528859042139202983889845199882984161376953125p-357
; [HW: 1.8528859042139202983889845199882984161376953125p-357] 

; mpf : + 3841056640407360 -357
; mpfd: + 3841056640407360 -357 (6.31161e-108) class: Pos. norm. non-zero
; hwf : + 3841056640407360 -357 (6.31161e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010011010 #b1101101001010110101110110000100111010001011101000000)))
(assert (= r (fp #b0 #b01010011010 #b1101101001010110101110110000100111010001011101000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

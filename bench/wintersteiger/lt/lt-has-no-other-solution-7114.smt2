(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9120452241827099459925420887884683907032012939453125p-709 {+ 4107486531774293 -709 (7.09956e-214)}
; Y = -1.0788579545168364148821638082154095172882080078125p-335 {- 355144654577224 -335 (-1.5414e-101)}
; 1.9120452241827099459925420887884683907032012939453125p-709 < -1.0788579545168364148821638082154095172882080078125p-335 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100111010 #b1110100101111011110010111011101001010110011101010101)))
(assert (= y (fp #b1 #b01010110000 #b0001010000110000000010001110111110101101111001001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

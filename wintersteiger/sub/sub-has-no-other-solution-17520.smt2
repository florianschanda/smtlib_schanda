(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3564636929700528700237782686599530279636383056640625p-636 {+ 1605369754831041 -636 (4.75698e-192)}
; Y = -1.3862813808288965145010251944768242537975311279296875p512 {- 1739656682761179 512 (-1.8587e+154)}
; 1.3564636929700528700237782686599530279636383056640625p-636 - -1.3862813808288965145010251944768242537975311279296875p512 == 1.3862813808288965145010251944768242537975311279296875p512
; [HW: 1.3862813808288965145010251944768242537975311279296875p512] 

; mpf : + 1739656682761179 512
; mpfd: + 1739656682761179 512 (1.8587e+154) class: Pos. norm. non-zero
; hwf : + 1739656682761179 512 (1.8587e+154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000011 #b0101101101000001001101000101111110000100100011000001)))
(assert (= y (fp #b1 #b10111111111 #b0110001011100011010101100010100110110110101111011011)))
(assert (= r (fp #b0 #b10111111111 #b0110001011100011010101100010100110110110101111011011)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)

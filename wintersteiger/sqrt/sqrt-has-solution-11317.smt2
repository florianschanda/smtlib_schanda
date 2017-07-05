(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6994736581507601247409411371336318552494049072265625p-83 {+ 3150149306203241 -83 (1.75721e-025)}
; 1.6994736581507601247409411371336318552494049072265625p-83 S == 1.84362342041467908160257138661108911037445068359375p-42
; [HW: 1.84362342041467908160257138661108911037445068359375p-42] 

; mpf : + 3799342121820572 -42
; mpfd: + 3799342121820572 -42 (4.19191e-013) class: Pos. norm. non-zero
; hwf : + 3799342121820572 -42 (4.19191e-013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110101100 #b1011001100010000101101001010011000101011110001101001)))
(assert (= r (fp #b0 #b01111010101 #b1101011111110111101101000101100011010010000110011100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

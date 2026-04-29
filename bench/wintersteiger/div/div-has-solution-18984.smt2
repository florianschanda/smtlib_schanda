(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9103749970051333573195506687625311315059661865234375p-327 {+ 4099964497279735 -327 (6.98731e-099)}
; Y = 1.18797584069937922635062932386063039302825927734375p937 {+ 846567926128380 937 (1.38011e+282)}
; 1.9103749970051333573195506687625311315059661865234375p-327 / 1.18797584069937922635062932386063039302825927734375p937 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111000 #b1110100100001110010101011111011100111011101011110111)))
(assert (= y (fp #b0 #b11110101000 #b0011000000011111001011110100100000111101111011111100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)

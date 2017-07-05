(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.393223847955535887876976630650460720062255859375 216 {+ 1770922775125744 216 (1.46724e+065)}
; 1.393223847955535887876976630650460720062255859375 216 I == 1.393223847955535887876976630650460720062255859375 216
; [HW: 1.393223847955535887876976630650460720062255859375 216] 

; mpf : + 1770922775125744 216
; mpfd: + 1770922775125744 216 (1.46724e+065) class: Pos. norm. non-zero
; hwf : + 1770922775125744 216 (1.46724e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010111 #b0110010010101010010100010110111011111001111011110000)))
(assert (= r (fp #b0 #b10011010111 #b0110010010101010010100010110111011111001111011110000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

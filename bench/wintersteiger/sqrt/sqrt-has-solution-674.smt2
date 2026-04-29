(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1222315799318207663048951872042380273342132568359375p615 {+ 550482097833855 615 (1.52591e+185)}
; 1.1222315799318207663048951872042380273342132568359375p615 S == 1.498153249792437247123189081321470439434051513671875p307
; [HW: 1.498153249792437247123189081321470439434051513671875p307] 

; mpf : + 2243482790138622 307
; mpfd: + 2243482790138622 307 (3.90629e+092) class: Pos. norm. non-zero
; hwf : + 2243482790138622 307 (3.90629e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100110 #b0001111101001010100100011001111001011000011101111111)))
(assert (= r (fp #b0 #b10100110010 #b0111111110000110111110001010110001000001001011111110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

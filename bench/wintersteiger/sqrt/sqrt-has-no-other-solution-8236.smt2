(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.481560482089590902177178577403537929058074951171875p851 {+ 2168755607695038 851 (2.22457e+256)}
; 1.481560482089590902177178577403537929058074951171875p851 S == 1.7213718262418442606076496304012835025787353515625p425
; [HW: 1.7213718262418442606076496304012835025787353515625p425] 

; mpf : + 3248769887858344 425
; mpfd: + 3248769887858344 425 (1.4915e+128) class: Pos. norm. non-zero
; hwf : + 3248769887858344 425 (1.4915e+128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010010 #b0111101101000111100011000011100110011110111010111110)))
(assert (= r (fp #b0 #b10110101000 #b1011100010101011110100101111000111110110111010101000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

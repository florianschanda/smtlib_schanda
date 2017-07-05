(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3228165632945658725105886333039961755275726318359375p193 {+ 1453836554162431 193 (1.66069e+058)}
; 1.3228165632945658725105886333039961755275726318359375p193 S == 1.6265402320843869166111517188255675137042999267578125p96
; [HW: 1.6265402320843869166111517188255675137042999267578125p96] 

; mpf : + 2821686355747869 96
; mpfd: + 2821686355747869 96 (1.28868e+029) class: Pos. norm. non-zero
; hwf : + 2821686355747869 96 (1.28868e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000000 #b0101001010100100000110110011010111110101000011111111)))
(assert (= r (fp #b0 #b10001011111 #b1010000001100100111100001100111001101110010000011101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

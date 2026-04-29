(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0065250334169990598098820555605925619602203369140625p532 {+ 29386138065377 532 (1.41508e+160)}
; 1.0065250334169990598098820555605925619602203369140625p532 S == 1.003257211993514363967960889567621052265167236328125p266
; [HW: 1.003257211993514363967960889567621052265167236328125p266] 

; mpf : + 14669178720258 266
; mpfd: + 14669178720258 266 (1.18957e+080) class: Pos. norm. non-zero
; hwf : + 14669178720258 266 (1.18957e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010011 #b0000000110101011100111111110010100100001100111100001)))
(assert (= r (fp #b0 #b10100001001 #b0000000011010101011101101111001011111101000000000010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

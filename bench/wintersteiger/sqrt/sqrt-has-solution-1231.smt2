(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.38286596740231093605189016670919954776763916015625p240 {+ 1724275028125892 240 (2.44331e+072)}
; 1.38286596740231093605189016670919954776763916015625p240 S == 1.1759532165023873773179730051197111606597900390625p120
; [HW: 1.1759532165023873773179730051197111606597900390625p120] 

; mpf : + 792422840274792 120
; mpfd: + 792422840274792 120 (1.56311e+036) class: Pos. norm. non-zero
; hwf : + 792422840274792 120 (1.56311e+036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101111 #b0110001000000011100000010000100010111110100011000100)))
(assert (= r (fp #b0 #b10001110111 #b0010110100001011010001010001111010000000111101101000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

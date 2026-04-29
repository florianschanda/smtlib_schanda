(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.512560475994745079475478632957674562931060791015625p-272 {+ 2308367168694778 -272 (1.99321e-082)}
; 1.512560475994745079475478632957674562931060791015625p-272 | == 1.512560475994745079475478632957674562931060791015625p-272
; [HW: 1.512560475994745079475478632957674562931060791015625p-272] 

; mpf : + 2308367168694778 -272
; mpfd: + 2308367168694778 -272 (1.99321e-082) class: Pos. norm. non-zero
; hwf : + 2308367168694778 -272 (1.99321e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011101111 #b1000001100110111001010011101000110011110100111111010)))
(assert (= r (fp #b0 #b01011101111 #b1000001100110111001010011101000110011110100111111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

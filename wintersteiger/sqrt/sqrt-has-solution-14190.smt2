(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1508494984728816490360259194858372211456298828125p-522 {+ 679365745111496 -522 (8.38225e-158)}
; 1.1508494984728816490360259194858372211456298828125p-522 S == 1.0727765370629998020746143083670176565647125244140625p-261
; [HW: 1.0727765370629998020746143083670176565647125244140625p-261] 

; mpf : + 327756385198241 -261
; mpfd: + 327756385198241 -261 (2.89521e-079) class: Pos. norm. non-zero
; hwf : + 327756385198241 -261 (2.89521e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110101 #b0010011010011110000100101001111010001111000111001000)))
(assert (= r (fp #b0 #b01011111010 #b0001001010100001011110111010111010011010000010100001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

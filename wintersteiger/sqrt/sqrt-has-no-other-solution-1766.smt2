(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9927739432137185904281295734108425676822662353515625p472 {+ 4471056360720441 472 (2.43005e+142)}
; 1.9927739432137185904281295734108425676822662353515625p472 S == 1.4116564536790525696829945445642806589603424072265625p236
; [HW: 1.4116564536790525696829945445642806589603424072265625p236] 

; mpf : + 1853935851393641 236
; mpfd: + 1853935851393641 236 (1.55886e+071) class: Pos. norm. non-zero
; hwf : + 1853935851393641 236 (1.55886e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010111 #b1111111000100110011011101110001001101100100000111001)))
(assert (= r (fp #b0 #b10011101011 #b0110100101100010010100010011110110111101001001101001)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

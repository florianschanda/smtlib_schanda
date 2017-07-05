(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5106461994252866620769282235414721071720123291015625p-715 {+ 2299746033449881 -715 (8.76427e-216)}
; 1.5106461994252866620769282235414721071720123291015625p-715 | == 1.5106461994252866620769282235414721071720123291015625p-715
; [HW: 1.5106461994252866620769282235414721071720123291015625p-715] 

; mpf : + 2299746033449881 -715
; mpfd: + 2299746033449881 -715 (8.76427e-216) class: Pos. norm. non-zero
; hwf : + 2299746033449881 -715 (8.76427e-216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110100 #b1000001010111001101101011001011001011011101110011001)))
(assert (= r (fp #b0 #b00100110100 #b1000001010111001101101011001011001011011101110011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

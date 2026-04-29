(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.95232469417715659432133179507218301296234130859375p-832 {+ 4288889137831964 -832 (6.81704e-251)}
; 1.95232469417715659432133179507218301296234130859375p-832 | == 1.95232469417715659432133179507218301296234130859375p-832
; [HW: 1.95232469417715659432133179507218301296234130859375p-832] 

; mpf : + 4288889137831964 -832
; mpfd: + 4288889137831964 -832 (6.81704e-251) class: Pos. norm. non-zero
; hwf : + 4288889137831964 -832 (6.81704e-251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111111 #b1111001111001011100011010001100010101010000000011100)))
(assert (= r (fp #b0 #b00010111111 #b1111001111001011100011010001100010101010000000011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

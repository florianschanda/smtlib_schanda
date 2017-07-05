(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.272128420800644921229149986174888908863067626953125p-309 {+ 1225557454514706 -309 (1.21973e-093)}
; 1.272128420800644921229149986174888908863067626953125p-309 | == 1.272128420800644921229149986174888908863067626953125p-309
; [HW: 1.272128420800644921229149986174888908863067626953125p-309] 

; mpf : + 1225557454514706 -309
; mpfd: + 1225557454514706 -309 (1.21973e-093) class: Pos. norm. non-zero
; hwf : + 1225557454514706 -309 (1.21973e-093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001010 #b0100010110101010001101010100101110100110101000010010)))
(assert (= r (fp #b0 #b01011001010 #b0100010110101010001101010100101110100110101000010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3295602984905894317080310429446399211883544921875p-760 {+ 1484207637478328 -760 (2.19236e-229)}
; 1.3295602984905894317080310429446399211883544921875p-760 | == 1.3295602984905894317080310429446399211883544921875p-760
; [HW: 1.3295602984905894317080310429446399211883544921875p-760] 

; mpf : + 1484207637478328 -760
; mpfd: + 1484207637478328 -760 (2.19236e-229) class: Pos. norm. non-zero
; hwf : + 1484207637478328 -760 (2.19236e-229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100000111 #b0101010001011110000100000101000000010011101110111000)))
(assert (= r (fp #b0 #b00100000111 #b0101010001011110000100000101000000010011101110111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

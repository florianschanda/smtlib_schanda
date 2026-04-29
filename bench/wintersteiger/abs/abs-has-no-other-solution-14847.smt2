(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1428877500519105669951613890589214861392974853515625p-250 {- 643509217889593 -250 (-6.31691e-076)}
; -1.1428877500519105669951613890589214861392974853515625p-250 | == 1.1428877500519105669951613890589214861392974853515625p-250
; [HW: 1.1428877500519105669951613890589214861392974853515625p-250] 

; mpf : + 643509217889593 -250
; mpfd: + 643509217889593 -250 (6.31691e-076) class: Pos. norm. non-zero
; hwf : + 643509217889593 -250 (6.31691e-076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100000101 #b0010010010010100010010101010010101111000110100111001)))
(assert (= r (fp #b0 #b01100000101 #b0010010010010100010010101010010101111000110100111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

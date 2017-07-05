(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8768737468370062515532481484115123748779296875p-616 {+ 3949088279506112 -616 (6.90173e-186)}
; 1.8768737468370062515532481484115123748779296875p-616 | == 1.8768737468370062515532481484115123748779296875p-616
; [HW: 1.8768737468370062515532481484115123748779296875p-616] 

; mpf : + 3949088279506112 -616
; mpfd: + 3949088279506112 -616 (6.90173e-186) class: Pos. norm. non-zero
; hwf : + 3949088279506112 -616 (6.90173e-186) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010111 #b1110000001111010110011000100000101100010110011000000)))
(assert (= r (fp #b0 #b00110010111 #b1110000001111010110011000100000101100010110011000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

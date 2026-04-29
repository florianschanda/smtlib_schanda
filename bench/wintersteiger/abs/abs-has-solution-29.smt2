(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.000522946734310636429654550738632678985595703125p-1005 {- 2355142717776 -1005 (-2.91797e-303)}
; -1.000522946734310636429654550738632678985595703125p-1005 | == 1.000522946734310636429654550738632678985595703125p-1005
; [HW: 1.000522946734310636429654550738632678985595703125p-1005] 

; mpf : + 2355142717776 -1005
; mpfd: + 2355142717776 -1005 (2.91797e-303) class: Pos. norm. non-zero
; hwf : + 2355142717776 -1005 (2.91797e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000010010 #b0000000000100010010001011001011100011111000101010000)))
(assert (= r (fp #b0 #b00000010010 #b0000000000100010010001011001011100011111000101010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

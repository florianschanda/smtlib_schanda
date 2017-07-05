(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1824684759365162722843933806871064007282257080078125p-857 {+ 821764960234557 -857 (1.2305e-258)}
; 1.1824684759365162722843933806871064007282257080078125p-857 | == 1.1824684759365162722843933806871064007282257080078125p-857
; [HW: 1.1824684759365162722843933806871064007282257080078125p-857] 

; mpf : + 821764960234557 -857
; mpfd: + 821764960234557 -857 (1.2305e-258) class: Pos. norm. non-zero
; hwf : + 821764960234557 -857 (1.2305e-258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100110 #b0010111010110110010000010000100010110010110000111101)))
(assert (= r (fp #b0 #b00010100110 #b0010111010110110010000010000100010110010110000111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

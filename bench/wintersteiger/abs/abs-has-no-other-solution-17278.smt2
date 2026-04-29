(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.829817455748530274917129645473323762416839599609375p-398 {+ 3737165584494614 -398 (2.83445e-120)}
; 1.829817455748530274917129645473323762416839599609375p-398 | == 1.829817455748530274917129645473323762416839599609375p-398
; [HW: 1.829817455748530274917129645473323762416839599609375p-398] 

; mpf : + 3737165584494614 -398
; mpfd: + 3737165584494614 -398 (2.83445e-120) class: Pos. norm. non-zero
; hwf : + 3737165584494614 -398 (2.83445e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001110001 #b1101010001101110111010101011001000010111000000010110)))
(assert (= r (fp #b0 #b01001110001 #b1101010001101110111010101011001000010111000000010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

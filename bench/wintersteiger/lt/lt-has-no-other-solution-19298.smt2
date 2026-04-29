(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0094050865381036796719627091079019010066986083984375p631 {+ 42356744228391 631 (8.99483e+189)}
; Y = -1.11790057408936860383619205094873905181884765625p758 {- 530976981535648 758 (-1.69488e+228)}
; 1.0094050865381036796719627091079019010066986083984375p631 < -1.11790057408936860383619205094873905181884765625p758 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110110 #b0000001001101000010111110010101100011000111000100111)))
(assert (= y (fp #b1 #b11011110101 #b0001111000101110101110110110010111100100101110100000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

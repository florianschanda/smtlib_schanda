(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.210814162307837005272403985145501792430877685546875p698 {- 949422582813998 698 (-1.59226e+210)}
; -1.210814162307837005272403985145501792430877685546875p698 | == 1.210814162307837005272403985145501792430877685546875p698
; [HW: 1.210814162307837005272403985145501792430877685546875p698] 

; mpf : + 949422582813998 698
; mpfd: + 949422582813998 698 (1.59226e+210) class: Pos. norm. non-zero
; hwf : + 949422582813998 698 (1.59226e+210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111001 #b0011010111110111111010101011110010100101010100101110)))
(assert (= r (fp #b0 #b11010111001 #b0011010111110111111010101011110010100101010100101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

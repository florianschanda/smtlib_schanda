(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.627610582677920803007509675808250904083251953125p-618 {+ 2826506786282064 -618 (1.49628e-186)}
; 1.627610582677920803007509675808250904083251953125p-618 | == 1.627610582677920803007509675808250904083251953125p-618
; [HW: 1.627610582677920803007509675808250904083251953125p-618] 

; mpf : + 2826506786282064 -618
; mpfd: + 2826506786282064 -618 (1.49628e-186) class: Pos. norm. non-zero
; hwf : + 2826506786282064 -618 (1.49628e-186) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010101 #b1010000010101011000101100100111100111001101001010000)))
(assert (= r (fp #b0 #b00110010101 #b1010000010101011000101100100111100111001101001010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

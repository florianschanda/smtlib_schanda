(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.730542280092805196289873492787592113018035888671875p-383 {- 3290069940404350 -383 (-8.78403e-116)}
; -1.730542280092805196289873492787592113018035888671875p-383 | == 1.730542280092805196289873492787592113018035888671875p-383
; [HW: 1.730542280092805196289873492787592113018035888671875p-383] 

; mpf : + 3290069940404350 -383
; mpfd: + 3290069940404350 -383 (8.78403e-116) class: Pos. norm. non-zero
; hwf : + 3290069940404350 -383 (8.78403e-116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000000 #b1011101100000100110100011010000101011000000001111110)))
(assert (= r (fp #b0 #b01010000000 #b1011101100000100110100011010000101011000000001111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

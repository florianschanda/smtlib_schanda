(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.376034616843664348806441921624355018138885498046875p-1005 {+ 1693509360295534 -1005 (4.01313e-303)}
; 1.376034616843664348806441921624355018138885498046875p-1005 | == 1.376034616843664348806441921624355018138885498046875p-1005
; [HW: 1.376034616843664348806441921624355018138885498046875p-1005] 

; mpf : + 1693509360295534 -1005
; mpfd: + 1693509360295534 -1005 (4.01313e-303) class: Pos. norm. non-zero
; hwf : + 1693509360295534 -1005 (4.01313e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010010 #b0110000001000011110011011111110110000001111001101110)))
(assert (= r (fp #b0 #b00000010010 #b0110000001000011110011011111110110000001111001101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

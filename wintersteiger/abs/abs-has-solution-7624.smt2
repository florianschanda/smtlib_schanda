(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2325512862255079138407154459855519235134124755859375p690 {- 1047317885989727 690 (-6.33143e+207)}
; -1.2325512862255079138407154459855519235134124755859375p690 | == 1.2325512862255079138407154459855519235134124755859375p690
; [HW: 1.2325512862255079138407154459855519235134124755859375p690] 

; mpf : + 1047317885989727 690
; mpfd: + 1047317885989727 690 (6.33143e+207) class: Pos. norm. non-zero
; hwf : + 1047317885989727 690 (6.33143e+207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110001 #b0011101110001000011110110010100011111011001101011111)))
(assert (= r (fp #b0 #b11010110001 #b0011101110001000011110110010100011111011001101011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

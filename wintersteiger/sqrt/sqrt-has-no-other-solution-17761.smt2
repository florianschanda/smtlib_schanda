(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.45889764247597408797219031839631497859954833984375p360 {+ 2066691251655996 360 (3.42628e+108)}
; 1.45889764247597408797219031839631497859954833984375p360 S == 1.2078483524333567533659561377135105431079864501953125p180
; [HW: 1.2078483524333567533659561377135105431079864501953125p180] 

; mpf : + 936065762568437 180
; mpfd: + 936065762568437 180 (1.85102e+054) class: Pos. norm. non-zero
; hwf : + 936065762568437 180 (1.85102e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100111 #b0111010101111010010100001101111010100101010100111100)))
(assert (= r (fp #b0 #b10010110011 #b0011010100110101100011001011010000111010100011110101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

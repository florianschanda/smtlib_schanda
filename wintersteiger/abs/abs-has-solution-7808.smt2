(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.47341233104433744216521517955698072910308837890625p-1006 {- 2132059597683876 -1006 (-2.14857e-303)}
; -1.47341233104433744216521517955698072910308837890625p-1006 | == 1.47341233104433744216521517955698072910308837890625p-1006
; [HW: 1.47341233104433744216521517955698072910308837890625p-1006] 

; mpf : + 2132059597683876 -1006
; mpfd: + 2132059597683876 -1006 (2.14857e-303) class: Pos. norm. non-zero
; hwf : + 2132059597683876 -1006 (2.14857e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000010001 #b0111100100110001100011001110111101011011110010100100)))
(assert (= r (fp #b0 #b00000010001 #b0111100100110001100011001110111101011011110010100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

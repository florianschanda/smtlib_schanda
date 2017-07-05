(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0667701910727951375434940928244031965732574462890625p-756 {+ 300706207634897 -756 (2.81445e-228)}
; 1.0667701910727951375434940928244031965732574462890625p-756 | == 1.0667701910727951375434940928244031965732574462890625p-756
; [HW: 1.0667701910727951375434940928244031965732574462890625p-756] 

; mpf : + 300706207634897 -756
; mpfd: + 300706207634897 -756 (2.81445e-228) class: Pos. norm. non-zero
; hwf : + 300706207634897 -756 (2.81445e-228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001011 #b0001000100010111110110011110101100000001010111010001)))
(assert (= r (fp #b0 #b00100001011 #b0001000100010111110110011110101100000001010111010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

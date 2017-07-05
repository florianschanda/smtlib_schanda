(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2468913330363953217982952992315404117107391357421875p915 {+ 1111899715463715 915 (3.45362e+275)}
; 1.2468913330363953217982952992315404117107391357421875p915 | == 1.2468913330363953217982952992315404117107391357421875p915
; [HW: 1.2468913330363953217982952992315404117107391357421875p915] 

; mpf : + 1111899715463715 915
; mpfd: + 1111899715463715 915 (3.45362e+275) class: Pos. norm. non-zero
; hwf : + 1111899715463715 915 (3.45362e+275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010010 #b0011111100110100010001010011100100001110101000100011)))
(assert (= r (fp #b0 #b11110010010 #b0011111100110100010001010011100100001110101000100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

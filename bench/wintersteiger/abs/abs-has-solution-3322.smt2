(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.407378482795787366654849392944015562534332275390625p-506 {+ 1834669583317866 -506 (6.71789e-153)}
; 1.407378482795787366654849392944015562534332275390625p-506 | == 1.407378482795787366654849392944015562534332275390625p-506
; [HW: 1.407378482795787366654849392944015562534332275390625p-506] 

; mpf : + 1834669583317866 -506
; mpfd: + 1834669583317866 -506 (6.71789e-153) class: Pos. norm. non-zero
; hwf : + 1834669583317866 -506 (6.71789e-153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000101 #b0110100001001001111101001100110010110011101101101010)))
(assert (= r (fp #b0 #b01000000101 #b0110100001001001111101001100110010110011101101101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

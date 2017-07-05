(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.10929971175781805214910491486079990863800048828125p-876 {+ 492242141144212 -876 (2.20177e-264)}
; Y = -1.805355651344464629204367156489752233028411865234375p554 {- 3626999411295654 554 (-1.06459e+167)}
; 1.10929971175781805214910491486079990863800048828125p-876 % -1.805355651344464629204367156489752233028411865234375p554 == 1.10929971175781805214910491486079990863800048828125p-876
; [HW: 1.10929971175781805214910491486079990863800048828125p-876] 

; mpf : + 492242141144212 -876
; mpfd: + 492242141144212 -876 (2.20177e-264) class: Pos. norm. non-zero
; hwf : + 492242141144212 -876 (2.20177e-264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010011 #b0001101111111011000100001101111101110110010010010100)))
(assert (= y (fp #b1 #b11000101001 #b1100111000101011110010011011100000101100010110100110)))
(assert (= r (fp #b0 #b00010010011 #x1bfb10df76494)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

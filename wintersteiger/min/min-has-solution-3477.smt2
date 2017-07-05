(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1243750102251939271269520759233273565769195556640625p172 {- 560135249704385 172 (-6.73086e+051)}
; Y = -1.618008742457772708434049491188488900661468505859375p-851 {- 2783263942244534 -851 (-1.07759e-256)}
; -1.1243750102251939271269520759233273565769195556640625p172 m -1.618008742457772708434049491188488900661468505859375p-851 == -1.1243750102251939271269520759233273565769195556640625p172
; [HW: -1.1243750102251939271269520759233273565769195556640625p172] 

; mpf : - 560135249704385 172
; mpfd: - 560135249704385 172 (-6.73086e+051) class: Neg. norm. non-zero
; hwf : - 560135249704385 172 (-6.73086e+051) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101011 #b0001111111010111000010100110100101011011010111000001)))
(assert (= y (fp #b1 #b00010101100 #b1001111000110101110100100010100101111111100010110110)))
(assert (= r (fp #b1 #b10010101011 #b0001111111010111000010100110100101011011010111000001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

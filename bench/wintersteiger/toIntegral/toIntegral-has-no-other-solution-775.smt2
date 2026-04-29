(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.649362337108391418638575487420894205570220947265625 962 {- 2924467979429786 962 (-6.42942e+289)}
; -1.649362337108391418638575487420894205570220947265625 962 I == -1.649362337108391418638575487420894205570220947265625 962
; [HW: -1.649362337108391418638575487420894205570220947265625 962] 

; mpf : - 2924467979429786 962
; mpfd: - 2924467979429786 962 (-6.42942e+289) class: Neg. norm. non-zero
; hwf : - 2924467979429786 962 (-6.42942e+289) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000001 #b1010011000111100100111000011000100100010011110011010)))
(assert (= r (fp #b1 #b11111000001 #b1010011000111100100111000011000100100010011110011010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

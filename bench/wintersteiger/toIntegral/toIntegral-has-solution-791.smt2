(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.172906444702855655037865290069021284580230712890625 41 {- 778701399933738 41 (-2.57925e+012)}
; -1.172906444702855655037865290069021284580230712890625 41 I == -1.17290644470267579890787601470947265625 41
; [HW: -1.17290644470267579890787601470947265625 41] 

; mpf : - 778701399932928 41
; mpfd: - 778701399932928 41 (-2.57925e+012) class: Neg. norm. non-zero
; hwf : - 778701399932928 41 (-2.57925e+012) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101000 #b0010110001000011100110001100010101000100001100101010)))
(assert (= r (fp #b1 #b10000101000 #b0010110001000011100110001100010101000100000000000000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

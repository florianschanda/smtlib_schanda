(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.64323676689247388793546633678488433361053466796875p-414 {- 2896880863687948 -414 (-3.88402e-125)}
; -1.64323676689247388793546633678488433361053466796875p-414 | == 1.64323676689247388793546633678488433361053466796875p-414
; [HW: 1.64323676689247388793546633678488433361053466796875p-414] 

; mpf : + 2896880863687948 -414
; mpfd: + 2896880863687948 -414 (3.88402e-125) class: Pos. norm. non-zero
; hwf : + 2896880863687948 -414 (3.88402e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100001 #b1010010010101011001010100010110101100011010100001100)))
(assert (= r (fp #b0 #b01001100001 #b1010010010101011001010100010110101100011010100001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

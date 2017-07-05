(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2151936597940145023954983116709627211093902587890625p957 {- 969146086060817 957 (-1.48031e+288)}
; -1.2151936597940145023954983116709627211093902587890625p957 | == 1.2151936597940145023954983116709627211093902587890625p957
; [HW: 1.2151936597940145023954983116709627211093902587890625p957] 

; mpf : + 969146086060817 957
; mpfd: + 969146086060817 957 (1.48031e+288) class: Pos. norm. non-zero
; hwf : + 969146086060817 957 (1.48031e+288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111100 #b0011011100010110111011101000001100011111001100010001)))
(assert (= r (fp #b0 #b11110111100 #b0011011100010110111011101000001100011111001100010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

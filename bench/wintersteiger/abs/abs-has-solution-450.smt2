(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.483103962340947656883827221463434398174285888671875p-833 {+ 2175706824779902 -833 (2.58932e-251)}
; 1.483103962340947656883827221463434398174285888671875p-833 | == 1.483103962340947656883827221463434398174285888671875p-833
; [HW: 1.483103962340947656883827221463434398174285888671875p-833] 

; mpf : + 2175706824779902 -833
; mpfd: + 2175706824779902 -833 (2.58932e-251) class: Pos. norm. non-zero
; hwf : + 2175706824779902 -833 (2.58932e-251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111110 #b0111101110101100101100111000011011010010100001111110)))
(assert (= r (fp #b0 #b00010111110 #b0111101110101100101100111000011011010010100001111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
